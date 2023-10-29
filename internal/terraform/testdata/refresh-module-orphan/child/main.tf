module "grandchild" {
  source = "./grandchild"
}

resource "aws_instance" "bar" {
  grandchildid = "${module.grandchild.id}"
  tags = {
    git_org = "idansluprisma"
  }
}

output "id" { value = "${aws_instance.bar.id}" }
output "grandchild_id" { value = "${module.grandchild.id}" }
