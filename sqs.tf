
resource "aws_sqs_queue" "queue_order" {
  name = "LKS-QueueOrder.fifo"
  fifo_queue = true
  content_based_deduplication = true
}

resource "aws_sqs_queue" "queue_payment" {
  name = "LKS-QueuePayment"
}

resource "aws_sqs_queue" "queue_order_dlq" {
  name = "LKS-QueueOrder-DLQ.fifo"
  fifo_queue = true
}

resource "aws_sqs_queue" "queue_payment_dlq" {
  name = "LKS-QueuePayment-DLQ"
}
