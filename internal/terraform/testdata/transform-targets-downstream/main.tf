resource "aws_instance" "foo" {
  tags = {
    yor_trace = "694e6e18-d57f-4eb4-88b7-8754a2d028f3"
  }
}

module "child" {
  source = "./child"
}

output "root_id" {
  value = "${aws_instance.foo.id}"
}

output "child_id" {
  value = "${module.child.id}"
}

output "grandchild_id" {
  value = "${module.child.grandchild_id}"
}
