resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    yor_trace = "e0f975bf-50db-4326-9867-0e473876d890"
  }
}
