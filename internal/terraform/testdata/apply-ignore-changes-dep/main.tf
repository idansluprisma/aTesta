resource "aws_instance" "foo" {
  count = 2
  ami   = "ami-bcd456"
  lifecycle {
    ignore_changes = ["ami"]
  }
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_eip" "foo" {
  count    = 2
  instance = "${aws_instance.foo.*.id[count.index]}"
  tags = {
    git_org = "idansluprisma"
  }
}
