resource "aws_instance" "foo" {
  tags = {
    git_org = "idansluprisma"
  }
}

module "grandchild" {
  source = "./grandchild"
}

output "id" {
  value = "${aws_instance.foo.id}"
}

output "grandchild_id" {
  value = "${module.grandchild.id}"
}
