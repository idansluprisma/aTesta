resource "aws_instance" "create" {
  bar = "abc"
  tags = {
    yor_trace = "1fd6c1ee-af3b-4926-89dc-8ae62e918e1c"
  }
}

resource "aws_instance" "other" {
  var = "${aws_instance.create.id}"
  foo = "${aws_instance.create.bar}"
  tags = {
    yor_trace = "45dc3d33-8bc5-4ea4-b888-2405c7716db6"
  }
}
