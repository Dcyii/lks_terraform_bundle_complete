
resource "aws_api_gateway_rest_api" "lks_api" {
  name = "LKS API"
}

resource "aws_api_gateway_resource" "event" {
  rest_api_id = aws_api_gateway_rest_api.lks_api.id
  parent_id   = aws_api_gateway_rest_api.lks_api.root_resource_id
  path_part   = "event"
}

resource "aws_api_gateway_method" "get_event" {
  rest_api_id   = aws_api_gateway_rest_api.lks_api.id
  resource_id   = aws_api_gateway_resource.event.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "lambda_get_event" {
  rest_api_id = aws_api_gateway_rest_api.lks_api.id
  resource_id = aws_api_gateway_resource.event.id
  http_method = aws_api_gateway_method.get_event.http_method
  type        = "AWS_PROXY"
  integration_http_method = "POST"
  uri         = aws_lambda_function.read_event.invoke_arn
}
