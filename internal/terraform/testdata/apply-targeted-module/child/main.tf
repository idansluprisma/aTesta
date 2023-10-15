resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "49d00976-dc4b-442e-9a57-eeb5f175b298"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "a493bb29-7bff-4364-8914-a854c9c1cb4f"
  }
}
