
resource "aws_apigatewayv2_api" "websocket_api" {
  name                       = "LKSWebSocketAPI"
  protocol_type              = "WEBSOCKET"
  route_selection_expression = "$request.body.action"
}
