resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "eda0e127-1593-4b14-9c3e-09d9b9b7fe66"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "696fe6fe-967f-4e3c-919d-adcd5da886a7"
  }
}
