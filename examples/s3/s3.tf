provider "aws" {
}

module "s3" {
  source = "coralogix/aws/coralogix//modules/s3"

  coralogix_region   = "Europe"
  CustomDomain       = "https://<your custom doamin>/api/v1/logs"
  private_key        = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXX"
  SSM_enable         = "false"
  LayerARN           = "<you layer arn>"
  application_name   = "s3"
  subsystem_name     = "logs"
  s3_bucket_name     = "test-bucket-name"
}