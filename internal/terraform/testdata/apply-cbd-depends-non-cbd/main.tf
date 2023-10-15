resource "aws_instance" "foo" {
  require_new = "yes"
  tags = {
    yor_trace = "dc0c3b7d-34da-4526-8785-cbe9f89b6efc"
  }
}

resource "aws_instance" "bar" {
  require_new = "yes"
  value       = "${aws_instance.foo.id}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "e885d448-f443-49be-9e82-f25af3a7bfeb"
  }
}
