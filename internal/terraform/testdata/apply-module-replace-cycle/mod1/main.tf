resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    yor_trace = "9285bf5f-ef3d-45eb-a5fb-19bf75863619"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
