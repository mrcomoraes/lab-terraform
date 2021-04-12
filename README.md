# Module for create 3 report buckets

This module is used for create 3 buckets: hourly, daily and weekly for your application.

This module can configure:

* Version control
* 1 lifecycle rule
* ACL policy

Server side encryption is enabled by default.

## Simple use example

```
module "report-hourly" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "hourly"

module "report-daily" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "daily"

module "report-weekly" {
  source        = "./modules/lab-s3-bucket"
  app_name      = "my-app"
  bucket_suffix = "weekly"
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.s3-bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl_policy"></a> [acl\_policy](#input\_acl\_policy) | ACL policy of your bucket | `string` | `"private"` | no |
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of your app | `string` | n/a | yes |
| <a name="input_bucket_suffix"></a> [bucket\_suffix](#input\_bucket\_suffix) | Suffix of bucket name | `string` | n/a | yes |
| <a name="input_lifecycle_files_expiration"></a> [lifecycle\_files\_expiration](#input\_lifecycle\_files\_expiration) | Number of days to expiration files in lifecycle rule | `number` | `120` | no |
| <a name="input_lifecycle_rule_enabled"></a> [lifecycle\_rule\_enabled](#input\_lifecycle\_rule\_enabled) | Enable or disable lifecycle rule | `bool` | `false` | no |
| <a name="input_lifecycle_rule_id"></a> [lifecycle\_rule\_id](#input\_lifecycle\_rule\_id) | Name of lifecycle rule | `string` | `null` | no |
| <a name="input_lifecycle_rule_prefix"></a> [lifecycle\_rule\_prefix](#input\_lifecycle\_rule\_prefix) | Directory name of lifecycle rule | `string` | `null` | no |
| <a name="input_lifecycle_transition_days_to_glacier"></a> [lifecycle\_transition\_days\_to\_glacier](#input\_lifecycle\_transition\_days\_to\_glacier) | Number of days to transation to Glacier storage class | `number` | `90` | no |
| <a name="input_lifecycle_transition_days_to_onezone_ia"></a> [lifecycle\_transition\_days\_to\_onezone\_ia](#input\_lifecycle\_transition\_days\_to\_onezone\_ia) | Number of days to transation to ONEZONE IA storage class | `number` | `60` | no |
| <a name="input_lifecycle_transition_days_to_standard_ia"></a> [lifecycle\_transition\_days\_to\_standard\_ia](#input\_lifecycle\_transition\_days\_to\_standard\_ia) | Number of days to transation to STANDARD IA storage class | `number` | `30` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Enable or disable version control | `bool` | `false` | no |

## Outputs

No outputs.
