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

variable "ec-rg" {
    type = string
    description = "(optional) describe your variable"
    default = "rg-sp-terraform"
}

variable "ec-location" {
  type        = string
  description = "(optional) describe your variable"
  default     = "centralus"
}