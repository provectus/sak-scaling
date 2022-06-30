# For depends_on queqe
variable "module_depends_on" {
  default     = []
  type        = list(any)
  description = "A list of explicit dependencies"
}

variable "cluster_autoscaler_conf" {
  type        = map(any)
  default     = {}
  description = "A set of parameters to pass to Cluster Autoscaler Helm chart (see: https://github.com/kubernetes/autoscaler)"
}

variable "hpa_conf" {
  type        = map(any)
  default     = {}
  description = "A set of parameters to pass to Horizontal Pod Autoscaler Helm chart (see: https://github.com/banzaicloud/hpa-operator)"
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "A name of the existing namespace"
}

variable "namespace_name" {
  type        = string
  default     = "scaling"
  description = "A name of namespace for creating"
}

variable "cluster_name" {
  type        = string
  default     = null
  description = "A name of the Amazon EKS cluster"
}

variable "cluster_version" {
  type        = string
  description = "EKS cluster version"
  default     = "1.21"
}

variable "hpa_enabled" {
  type        = bool
  default     = true
  description = "Whether to deploy Horizontal Pod Autoscaler chart"
}

variable "cluster_autoscaler_enabled" {
  type        = bool
  default     = true
  description = "Whether to deploy Cluster Autoscaler chart"
}

variable "cluster_autoscaler_chart_version" {
  type        = string
  default     = "9.19.2"
  description = "Version of Cluster Autoscaler chart"
}

variable "hpa_chart_version" {
  type        = string
  default     = "0.4.0"
  description = "Version of Horizontal Pod Autoscaler chart"
}

variable "argocd" {
  type        = map(string)
  description = "A set of values for enabling deployment through ArgoCD"
  default     = {}
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A tags for attaching to new created AWS resources"
}
