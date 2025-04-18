
resource "aws_dynamodb_table" "tokens" {
  name         = "tokens"
  billing_mode = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 5

  hash_key  = "token"
  range_key = "deviceid"

  attribute {
    name = "token"
    type = "S"
  }

  attribute {
    name = "deviceid"
    type = "S"
  }

  autoscaling {
    read {
      min_capacity       = 10
      max_capacity       = 100
      target_utilization = 70
    }
    write {
      min_capacity       = 5
      max_capacity       = 25
      target_utilization = 70
    }
  }
}
