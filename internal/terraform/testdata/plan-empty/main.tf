resource "aws_instance" "foo" {
  tags = {
    yor_trace = "6101d28a-75a6-459f-976b-38bcc3883421"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "d74b2b9f-042e-40c6-9e02-4c041f471323"
  }
}
