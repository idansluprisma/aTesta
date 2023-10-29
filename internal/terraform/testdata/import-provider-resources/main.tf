provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
