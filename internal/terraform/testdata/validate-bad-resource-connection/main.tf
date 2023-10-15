resource "aws_instance" "foo" {
  connection {
    user = "test"
  }
  provisioner "shell" {
    test_string = "test"
  }
  tags = {
    yor_trace = "093c1cfb-8bf9-4a27-a8a9-35794bdd9c52"
  }
}
