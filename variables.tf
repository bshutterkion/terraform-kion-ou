variable "name" {
  description = "Name of the OU"
  type        = string
}

variable "parent_ou_id" {
  description = "Parent OU ID for the OU"
  type        = number
}

variable "permission_scheme_id" {
  description = "Permission scheme ID for the OU"
  type        = number
}

variable "description" {
  description = "Description for the OU"
  type        = string
  default     = null
}

variable "labels" {
  description = "A map of label keys to their corresponding values"
  type        = map(string)
  default     = {}
}
variable "owner_user_groups" {
  description = "Owner user groups for the OU"
  type = list(object({
    id = number
  }))
  default = []
}

variable "owner_users" {
  description = "Owner users for the OU"
  type = list(object({
    id = number
  }))
  default = []
}
