resource "aws_instance" "child" {
  ami = "child"
  tags = {
    yor_trace = "a194420e-c131-48c6-a7dc-ff71e057a4a3"
  }
}
