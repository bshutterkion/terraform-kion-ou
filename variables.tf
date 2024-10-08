variable "name" {
  description = "Name of the OU"
  type        = string
}

variable "parent_ou_id" {
  description = "Parent OU ID or name for the OU"
  type        = string
}

variable "permission_scheme_id" {
  description = "Permission scheme ID for the OU"
  type        = number
  default     = 2
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
  description = "Owner user group IDs for the OU"
  type        = list(number)
  default     = [1]
}

variable "owner_users" {
  description = "Owner user IDs for the OU"
  type        = list(number)
  default     = [1]
}
