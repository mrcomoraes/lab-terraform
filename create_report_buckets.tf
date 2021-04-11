module "report-hourly" {
  source = "./modules/lab-s3-bucket"
  app_name = "my-app"
  bucket_suffix = "hourly"
  # acl_policy = "private"
  # versioning = false
  # lifecycle_rule_id = "log"
  # lifecycle_rule_enabled = true
  # lifecycle_rule_prefix = "log/"
  # lifecycle_transition_days_to_standard_ia = 30
  # lifecycle_transition_days_to_onezone_ia = 60
  # lifecycle_transition_days_to_glacier = 90
  # lifecycle_files_expiration = 180
}

module "report-daily" {
  source = "./modules/lab-s3-bucket"
  app_name = "my-app"
  bucket_suffix = "daily"
  # acl_policy = "private"
  # versioning = false
  # lifecycle_rule_id = "log"
  # lifecycle_rule_enabled = true
  # lifecycle_rule_prefix = "log/"
  # lifecycle_transition_days_to_standard_ia = 30
  # lifecycle_transition_days_to_onezone_ia = 60
  # lifecycle_transition_days_to_glacier = 90
  # lifecycle_files_expiration = 180
}

module "report-weekly" {
  source = "./modules/lab-s3-bucket"
  app_name = "my-app"
  bucket_suffix = "weekly"
  # acl_policy = "private"
  # versioning = false
  # lifecycle_rule_id = "log"
  # lifecycle_rule_enabled = true
  # lifecycle_rule_prefix = "log/"
  # lifecycle_transition_days_to_standard_ia = 30
  # lifecycle_transition_days_to_onezone_ia = 60
  # lifecycle_transition_days_to_glacier = 90
  # lifecycle_files_expiration = 180
}