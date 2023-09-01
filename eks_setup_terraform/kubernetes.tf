module "eks_auth" {
  source = "aidanmelen/eks-auth/aws"
  eks    = module.eks

  map_users = [
    {
      userarn  = var.arn_account
      groups   = ["system:masters"]
      username = var.arn_username
    }
  ]
}

resource "kubernetes_namespace" "prometheus" {
  metadata {
    name = "prometheus"
  }
}

resource "helm_release" "kube-prometheus" {
  name       = "kube-prometheus-stackr"
  namespace  = "prometheus"
  version    = "36.2.0"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
}