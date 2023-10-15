resource "aws_instance" "foo" {
  num = "2"

  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "21e7f25c-6503-4cac-b88e-097349a36276"
  }
}
