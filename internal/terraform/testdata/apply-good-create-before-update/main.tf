resource "aws_instance" "bar" {
  foo = "baz"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "065375de-02b7-4485-b111-82773557920f"
  }
}
