resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"
  tags = {
    yor_trace = "a90c90ef-da04-4416-b2c3-d537b0a9192f"
  }
}
