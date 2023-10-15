resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "6e5f8208-6c6c-45d6-b4a6-0a4be419914c"
  }
}
