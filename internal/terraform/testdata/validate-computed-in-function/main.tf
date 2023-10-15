data "aws_data_source" "foo" {
  optional_attr = "value"
}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "eebd48fb-1523-46f7-aec3-325356d8b544"
  }
}
