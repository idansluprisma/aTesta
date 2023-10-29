provider "aws" {
  access_key = "a"
  secret_key = "b"
  region     = "us-east-1"
}

resource "aws_instance" "foo" {
  ami             = "ami-foo"
  instance_type   = "t2.micro"
  security_groups = "${aws_security_group.foo.name}"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_security_group" "foo" {
  name        = "foobar"
  description = "foobar"
  tags = {
    git_org = "idansluprisma"
  }
}
