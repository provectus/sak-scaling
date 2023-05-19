data "aws_region" "current" {}

data "aws_eks_cluster" "this" {
  name = var.cluster_name
}

locals {
  argocd_enabled = length(var.argocd) > 0 ? 1 : 0
  namespace      = var.namespace
}
