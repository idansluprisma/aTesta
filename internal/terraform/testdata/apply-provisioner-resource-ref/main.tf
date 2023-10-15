resource "aws_instance" "bar" {
  num = "2"

  provisioner "shell" {
    command = "${aws_instance.bar.num}"
  }
  tags = {
    yor_trace = "39063dc8-644d-44e6-84ee-5854ee70ce50"
  }
}
