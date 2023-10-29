resource "aws_instance" "foo" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}

output "out" {
  value = "${aws_instance.foo.0.id}"
}
