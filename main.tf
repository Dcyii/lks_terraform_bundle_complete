
module "vpc" {
  source = "./"
}
module "rds" {
  source = "./"
}
module "s3" {
  source = "./"
}
module "ssm" {
  source = "./"
}
module "dynamodb" {
  source = "./"
}
