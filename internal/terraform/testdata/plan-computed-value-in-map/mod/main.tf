variable "services" {
  type = list(map(string))
}

resource "aws_instance" "inner2" {
  looked_up = var.services[0]["elb"]
  tags = {
    yor_trace = "5f7f852f-f3c9-4292-ab3f-a9f0af2de0b1"
  }
}

