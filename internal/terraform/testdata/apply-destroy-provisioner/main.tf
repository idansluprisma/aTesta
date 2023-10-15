resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "01871705-9b64-477f-93ab-bdfb4617fca1"
  }
}
