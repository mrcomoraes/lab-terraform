variable "app_name" {
  type = string
}

variable "bucket_suffix" {
  type = string
}

variable "acl_policy" {
  type = string
  default = "private"
}

variable "versioning" {
  type = bool
  default = false
}

variable "lifecycle_rule_id" {
  type = string
  default = null
}

variable "lifecycle_rule_enabled" {
  type = bool
  default = false
}

variable "lifecycle_rule_prefix" {
  type = string
  default = null
}

variable "lifecycle_transition_days_to_standard_ia" {
  type = number
  default = 30
}

variable "lifecycle_transition_days_to_onezone_ia" {
  type = number
  default = 60
}

variable "lifecycle_transition_days_to_glacier" {
  type = number
  default = 90
}

variable "lifecycle_files_expiration" {
  type = number
  default = 120
}

