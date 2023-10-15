resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "dd7a4e6a-4876-4cc5-a099-b0707b1fda46"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "3d16c19f-9edc-4d23-bd0f-0d30b42b5b5d"
  }
}

output "foo_num" {
  value = ["${join(",", aws_instance.bar.*.foo)}"]
}
