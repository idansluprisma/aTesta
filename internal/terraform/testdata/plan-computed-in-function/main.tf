data "aws_data_source" "foo" {

}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "84b67695-af3c-4203-9236-0ae39c4024ec"
  }
}
