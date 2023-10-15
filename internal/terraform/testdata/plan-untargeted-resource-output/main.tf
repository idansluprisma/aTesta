module "mod" {
  source = "./mod"
}


resource "aws_instance" "c" {
  name = "${module.mod.output}"
  tags = {
    yor_trace = "836e8f2c-b47e-4306-875a-ee1da5a4ebf0"
  }
}
