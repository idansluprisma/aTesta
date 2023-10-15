resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "fa0e2c4a-3b86-488e-a9a4-29188d1e8893"
  }
}
