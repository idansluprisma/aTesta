variable "foo" {}

module "child" {
  input  = "${var.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "5c4f1519-7582-4c61-944b-13b20a214b6e"
  }
}
