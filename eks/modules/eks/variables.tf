variable "cluster_name" {
    description = "name of the EKS cluster"
    type = string
}

variable "cluster_version" {
    description = "kubernates version"
    type = string
  
}

variable "vpc_id" {
    description = "vpc_id"
    type = string
  
}

variable "subnet_ids" {
    description = "subnet_IDs"
    type = list(string)
  
}

variable "node_group" {
    description = "EKS node group configuration"
    type = map(object({
        instance_type = list(string)
        capacity = string
        scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
}
    
    
  
