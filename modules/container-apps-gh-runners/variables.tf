#######################################
# Azure resources specific variables  #
#######################################
variable "location" {
  default = "norwayeast"
  description = "Location of the resources in azure"
}

variable "prefix" {
  default = "demo"
  type    = string
  description = "Prefix for resources"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group where the resources should be placed"
}

variable "runner_ip" {
  default     = ""
  type        = string
  description = "IP of the runner setting up the infrastructure. This needs to be granted before updates with terraform is executed, this is just to ensure that it will not always have a change in the infrastructure"
}

variable "vnet_address_space" {
  type = string
  default = "10.128.0.0/16"
  description = "The addressspace to use for the githubrunners vnet"
}

variable "subnet_address_space" {
  type = string
  default = "10.128.0.0/23"
  description = "The addressspace to use for the githubrunners subnet inside the vnet. Must be a valid subnet in the vnet_address_space"
}

variable "additional_service_endpoints" {
  type = set(string)
  default = []
  description = "Additional service endpoints to add. Microsoft.KeyVault is always added as the setup needs this"
}

#######################################
# Github tied variables               #
#######################################
variable "app_key" {
  sensitive = true
  type      = string
  description = "Github app private key"
}

variable "app_id" {
  sensitive = true
  type      = string
  description = "Github App Id"
}

variable "install_id" {
  sensitive = true
  type      = string
  description = "Github Installation Id"
}

variable "repos" {
  type = set(object({
    owner = string
    name = string
  }))
  description = "Set of repos there should be created a job for running actiosn. Each owner/repo will get it's own azure container app job in the environsment"
}

#######################################
# Runner tied variables               #
#######################################

variable "runner_image" {
  type = string
  default = "ghcr.io/tjololo/github-runner-keda:v0.1.3"
  description = "Docker image to run when a job is scheduled"
}

variable "runner_cpu" {
  type = string
  default = "0.5"
  description = "CPU allocated to a runner"
}

variable "runner_memory" {
  type= string
  default = "1Gi"
  description = "Memory allocated to a runner"
}

variable "runner_min_running_jobs" {
  type = string
  default = "0"
  description = "Minimum number of jobs that always should be running"
}

variable "runner_max_running_jobs" {
  type = string
  default = "20"
  description = "Maximum number of jobs to run at one time"
}

variable "runner_labels" {
  default = "default"
  type    = string
  description = "Additional labels to add to the runner"
}