resource "aws_instance" "foo" {
  foo   = "foo"
  count = 2
  tags = {
    yor_trace = "4ba303d1-c01e-48ef-bade-21c94a8fee9f"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "974bef4e-6316-45df-b6bf-e3fd5451b4dc"
  }
}
