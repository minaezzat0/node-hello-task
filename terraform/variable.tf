variable "new_relic_license_key" {
  description = "New Relic License Key"
  type        = string
  sensitive = true
}

variable "new_relic_app_name" {
  description = "New Relic Application Name"
  type        = string
}

variable "node_env" {
  description = "Node Environment"
  type        = string
  default     = "production"
}

variable "image_name" {
  description = "Docker Image Name"
  type        = string
}
