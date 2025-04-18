
resource "aws_lambda_function" "read_event" {
  function_name = "LKS-ReadEvent"
  filename      = "lambda_read_event.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec.arn
  source_code_hash = filebase64sha256("lambda_read_event.zip")
}
