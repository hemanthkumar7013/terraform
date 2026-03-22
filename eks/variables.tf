variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {

  description = "availability_zones"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1a", "us-east-1c"]

}

variable "public_subnet_cidrs" {
  description = "public_subnet_cidrs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

}

variable "private_subnet_cidrs" {
  description = "private-subnet_cidrs"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster_name" {
  description = "otel_eks_cluster"
  type        = string
  default     = "otel_cluster_name"

}

variable "cluster_version" {
  description = "cluster_version"
  type        = string
  default     = "1.30"
}

variable "node_groups" {
  description = "eks node group configuration"
  type = map(object({
    instance_type = list(string)
    capacity      = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
  default = {
    general = {
      instance_type = ["c7i-flex.large"]
      capacity       = "ON_DEMAND"
      scaling_config = {
        desired_size = 2
        max_size     = 4
        min_size     = 1
      }
    }
  }
}