module "grandchild" {
  source = "./grandchild"
}

resource "aws_instance" "bar" {
  grandchildid = "${module.grandchild.id}"
  tags = {
    yor_trace = "aa66e15e-4aad-422c-b6d0-13d9e6d01363"
  }
}

output "id" { value = "${aws_instance.bar.id}" }
output "grandchild_id" { value = "${module.grandchild.id}" }
