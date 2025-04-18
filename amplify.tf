
resource "aws_amplify_app" "frontend" {
  name = "LKSFrontend"
  repository = "https://github.com/Dcyii/klaten-api"
  iam_service_role_arn = aws_iam_role.lambda_exec.arn
}
