resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = aws_instance.foo[0].foo
    order   = count.index
  }
  tags = {
    yor_trace = "623c0adb-1743-4f86-a1e1-e1a2d104da8c"
  }
}
