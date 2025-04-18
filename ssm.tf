
resource "aws_ssm_parameter" "db_name" {
  name  = "/lks/database/dbname"
  type  = "String"
  value = var.db_name
}

resource "aws_ssm_parameter" "db_user" {
  name  = "/lks/database/username"
  type  = "String"
  value = var.db_username
}

resource "aws_ssm_parameter" "db_pass" {
  name  = "/lks/database/password"
  type  = "SecureString"
  value = var.db_password
}
