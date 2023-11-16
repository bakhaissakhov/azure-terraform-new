variable "tenant_id" {
  type        = string
  description = "(optional) describe your variable"
  default = ""
}

variable "subscription_id" {
  type        = string
  description = "(optional) describe your variable"
  default = ""
}

variable "client_id" {
  type        = string
  description = "(optional) describe your variable"
  default = ""
}

variable "client_secret" {
  type        = string
  description = "(optional) describe your variable"
  default = ""
}

variable "application_name" {
  type        = list(string)
  description = "(optional) describe your variable"
  default     = ["myapp1", "myapp2"]
}

variable "environment_name" {
  type        = list(string)
  description = "(optional) describe your variable"
  default     = ["dev", "qa", "prod"]
}

variable "location" {
  type        = string
  description = "(optional) describe your variable"
  default     = "centralus"
}

variable "rg_name" {
  type        = string
  description = "(optional) describe your variable"
  default     = "rg-sp-terraform"
}
