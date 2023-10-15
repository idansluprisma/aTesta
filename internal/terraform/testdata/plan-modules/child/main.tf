resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "5b518848-2303-4736-8166-8dee16c7694a"
  }
}
