resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "417ed7d6-33a6-46fb-bbe4-430bac98f4d8"
  }
}
