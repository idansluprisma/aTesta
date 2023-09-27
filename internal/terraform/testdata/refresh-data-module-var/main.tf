resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
