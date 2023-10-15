variable "instance_count" {
  default = 1
}

resource "aws_instance" "test" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "2490eb61-8e53-44ef-b4e9-0afc02e0bd20"
  }
}

resource "aws_instance" "dependent" {
  count = "${length(aws_instance.test)}"
  tags = {
    yor_trace = "f6778e5e-6fe1-4622-abf6-19e62edf7100"
  }
}
