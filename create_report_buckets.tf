module "report-hourly" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "hourly"
}

module "report-daily" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "daily"
}

module "report-weekly" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "weekly"
}