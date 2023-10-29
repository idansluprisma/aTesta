variable "instance_count" {}

resource "aws_instance" "foo" {
  count = var.instance_count
  foo   = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = join(",", aws_instance.foo.*.foo)
  tags = {
    git_org = "idansluprisma"
  }
}
