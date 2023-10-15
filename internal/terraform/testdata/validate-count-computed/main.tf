data "aws_data_source" "foo" {
  compute = "value"
}

resource "aws_instance" "bar" {
  count = "${data.aws_data_source.foo.value}"
  tags = {
    yor_trace = "b6404e21-e551-415e-b089-7cd39fe80d1a"
  }
}
