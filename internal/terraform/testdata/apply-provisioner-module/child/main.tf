resource "aws_instance" "bar" {
  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "883e4cd1-9e6f-4bea-b6cc-cf7aafedfcb0"
  }
}
