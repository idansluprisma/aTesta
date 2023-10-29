variable "num" {}

resource "aws_instance" "foo" {
  count = "${var.num}"
  value = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  ami = "special"

  value = "${join(",", aws_instance.foo.*.id)}"
  tags = {
    git_org = "idansluprisma"
  }
}
