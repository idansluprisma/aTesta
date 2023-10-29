resource "aws_instance" "parent" {
  count = 2
  tags = {
    git_org = "idansluprisma"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

