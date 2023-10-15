resource "aws_instance" "foo" {
  tags = {
    yor_trace = "db534a2e-39b6-4a96-9168-a7c3db94098d"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
