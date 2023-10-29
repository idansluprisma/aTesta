variable "instance_count" {
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    git_org = "idansluprisma"
  }
}

module "submod" {
  source = "./submod"
  list   = ["${aws_instance.foo.*.id}"]
}
