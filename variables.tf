variable "resource_group_name" {
  description = "The resource group name to be imported"
}

variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group"
}

variable "client_id" {
  description = "The Client ID (appId) for the Service Principal used for the AKS deployment"
}

variable "client_secret" {
  description = "The Client Secret (password) for the Service Principal used for the AKS deployment"
}

variable "admin_username" {
  default     = "azureuser"
  description = "The username of the local administrator to be created on the Kubernetes cluster"
}

variable "agents_size" {
  default     = "Standard_D2s_v3"
  description = "The default virtual machine size for the Kubernetes agents"
}

variable "log_analytics_workspace_sku" {
  description = "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
  default     = "PerGB2018"
}

variable "log_retention_in_days" {
  description = "The retention period for the logs in days"
  default     = 30
}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
  default     = 2
}

variable "public_ssh_key" {
  description = "A custom ssh key to control access to the AKS cluster"
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "Any tags that should be present on the Virtual Network resources"
  default     = {}
}

variable "enable_log_analytics_workspace" {
  type        = bool
  description = "Enable the creation of azurerm_log_analytics_workspace and azurerm_log_analytics_solution or not"
  default     = true
}

variable "vnet_subnet_id" {
  type    = string
  default = null
}

variable "rbac_server_app_id" {
  default = ""
  type    = string
}
variable "rbac_server_app_secret" {
  default = ""
  type    = string
}
variable "rbac_client_app_id" {
  type    = string
  default = ""
}

variable "azure_tenant_id" {
  default = ""
  type    = string
}

variable "network_plugin" {
  type        = string
  description = "(optional) Network plugin to use for networking. "
  default     = "azure"
}

variable "network_policy" {
  type        = string
  description = "(optional)  Sets up network policy to be used with Azure CNI"
  default     = "azure"
}

variable "kube_dashboard_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Is the Kubernetes Dashboard enabled?"
}
