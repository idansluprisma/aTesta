module "child" {
  source = "./child"
  leader = true
}

resource "aws_instance" "bar" {
  foo = "${module.child.leader}"
  tags = {
    yor_trace = "8aefceda-aaf2-43c1-9098-d1d63fb9667e"
  }
}
