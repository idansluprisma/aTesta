resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "65b877fd-e28a-436f-ab92-7478c6e7810b"
  }
}
