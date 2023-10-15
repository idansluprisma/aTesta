provider "aws" {
  alias = "bar"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d550e0bf-2c16-4922-94fc-c17abc4f7f5d"
  }
}

resource "aws_instance" "bar" {
  foo      = "bar"
  provider = "aws.bar"
  tags = {
    yor_trace = "12611ace-aae6-4eed-b216-a476a574bb99"
  }
}
