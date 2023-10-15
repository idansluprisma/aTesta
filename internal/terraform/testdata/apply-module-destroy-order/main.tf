module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  tags = {
    yor_trace = "ae8be647-6ea9-492f-b446-d6e928956a11"
  }
}
