resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "e7342ad6-5d04-46d9-819d-78b921d67d1a"
  }
}
