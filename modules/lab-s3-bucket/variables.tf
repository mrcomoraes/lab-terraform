variable "app_name" {
  type = string
  description = "Name of your app"
}

variable "bucket_suffix" {
  type = string
  description = "Suffix of bucket name"
}

variable "acl_policy" {
  type    = string
  default = "private"
  description = "ACL policy of your bucket"
}

variable "versioning" {
  type    = bool
  default = false
  description = "Enable or disable version control"
}

variable "lifecycle_rule_id" {
  type    = string
  default = null
  description = "Name of lifecycle rule"
}

variable "lifecycle_rule_enabled" {
  type    = bool
  default = false
  description = "Enable or disable lifecycle rule"
}

variable "lifecycle_rule_prefix" {
  type    = string
  default = null
  description = "Directory name of lifecycle rule"
}

variable "lifecycle_transition_days_to_standard_ia" {
  type    = number
  default = 30
  description = "Number of days to transation to STANDARD IA storage class"
}

variable "lifecycle_transition_days_to_onezone_ia" {
  type    = number
  default = 60
  description = "Number of days to transation to ONEZONE IA storage class"
}

variable "lifecycle_transition_days_to_glacier" {
  type    = number
  default = 90
  description = "Number of days to transation to Glacier storage class"
}

variable "lifecycle_files_expiration" {
  type    = number
  default = 120
  description = "Number of days to expiration files in lifecycle rule"
}
