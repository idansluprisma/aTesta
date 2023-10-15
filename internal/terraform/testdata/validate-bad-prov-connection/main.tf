resource "aws_instance" "foo" {
  provisioner "shell" {
    test_string = "test"
    connection {
      user = "test"
    }
  }
  tags = {
    yor_trace = "0f0c5941-e171-444e-8c5e-2a912731e290"
  }
}
