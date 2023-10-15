resource "aws_instance" "foo" {
  count = 2
  tags = {
    yor_trace = "4dfc6e4a-50f6-462a-b3e3-f442b22d8dd1"
  }
}

resource "aws_instance" "bar" {
  count = "${length(aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "37611e95-1218-4a63-8692-4ef2e03995b1"
  }
}

resource "aws_instance" "baz" {
  count = "${length(aws_instance.bar.*.id)}"
  tags = {
    yor_trace = "e7c021c6-c461-43b9-b60f-f2730e061abe"
  }
}
