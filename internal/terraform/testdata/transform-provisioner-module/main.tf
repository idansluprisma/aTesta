resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "f68092c6-a56e-4ab8-a11c-1ab5a82944d7"
  }
}

module "child" {
  source = "./child"
}
