variable "project" {
  description = "Name of the project."
  type        = string
}

variable "environment" {
  description = "Environment Name."
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "eks_version" {
  description = "Kubernetes version to use for the EKS cluster."
  type        = string
  default     = "1.21"
}

variable "subnet_ids" {
  description = "A list of subnets to place the EKS cluster and workers within."
  type        = list(string)
  default     = []
}

variable "eks_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "eks_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `eks_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "eks_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "node_groups_configs" {
  description = "Map of map of node groups to create."
  type        = any
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to the eks resource."
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "VPC where the cluster and workers will be deployed."
  type        = string
  default     = null
}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}

variable "security_group_description" {
  description = "Security Group Description"
  type        = string
  default     = ""
}

variable "security_group_rules" {
  description = "Map of Security Group Rules"
  type        = any
  default     = {}
}
