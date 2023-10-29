resource "aws_instance" "shared" {
  tags = {
    git_org = "idansluprisma"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
