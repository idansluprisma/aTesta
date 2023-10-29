resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}

output "foo_num" {
  value = "${aws_instance.bar.0.foo}"
}
