resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${aws_instance.foo.foo}"
  }
  tags = {
    yor_trace = "97d8abb9-dc96-4f61-8497-a6ec6ca62c5c"
  }
}
