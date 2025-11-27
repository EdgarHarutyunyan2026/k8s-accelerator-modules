#provider "aws" {
#  region = var.region
#}
#
#provider "kubernetes" {
#  alias                  = "eks"
#  # host                   = data.aws_eks_cluster.cluster[0].endpoint
#  # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data)
#  # token                  = data.aws_eks_cluster_auth.cluster_auth[0].token
#  host                   = try(data.aws_eks_cluster.cluster[0].endpoint, null)
#  cluster_ca_certificate = try(base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data), null)
#  token                  = try(data.aws_eks_cluster_auth.cluster_auth[0].token, null)
#}
#
#provider "helm" {
#  alias = "eks"
#
#  kubernetes = {
#    count = var.cluster_count != 0 ? 1 : 0
#    # host                   = data.aws_eks_cluster.cluster[0].endpoint
#    # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data)
#    # token                  = data.aws_eks_cluster_auth.cluster_auth[0].token
#    host                   = try(data.aws_eks_cluster.cluster[0].endpoint, null)
#    cluster_ca_certificate = try(base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data), null)
#    token                  = try(data.aws_eks_cluster_auth.cluster_auth[0].token, null)
#  }
#}

