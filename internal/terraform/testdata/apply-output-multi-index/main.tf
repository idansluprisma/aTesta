resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "4399b823-e45d-4a57-9b36-4561b6a07ee3"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "8b389c72-20bf-451e-8793-ae39cb16731a"
  }
}

output "foo_num" {
  value = "${aws_instance.bar.0.foo}"
}
