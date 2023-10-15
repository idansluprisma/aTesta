resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "6fd88442-f7d3-43f8-aeac-924c57ff1fd0"
  }
}

resource "aws_instance" "bar" {
  count = 3
  tags = {
    yor_trace = "dc4e69e8-0eb2-431e-a3a9-5cd7d4c6cb8d"
  }
}
