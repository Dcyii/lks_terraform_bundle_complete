
resource "aws_amplify_app" "frontend" {
  name = "LKSFrontend"
  repository = "https://github.com/handipradana/lks-serverless/tree/main/front-end"
  iam_service_role_arn = aws_iam_role.lambda_exec.arn
}
