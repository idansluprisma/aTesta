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
    yor_trace = "4cf27f9d-6e13-4594-abf6-93e22b3ac7c2"
  }
}

resource "aws_security_group" "foo" {
  name        = "foobar"
  description = "foobar"
  tags = {
    yor_trace = "6ac54c42-4059-4887-b583-d97aba5c8618"
  }
}
