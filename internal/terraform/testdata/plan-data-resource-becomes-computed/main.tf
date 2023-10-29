resource "aws_instance" "foo" {
  tags = {
    git_org = "idansluprisma"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
