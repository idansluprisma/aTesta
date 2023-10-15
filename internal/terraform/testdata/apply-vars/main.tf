variable "amis" {
  default = {
    us-east-1 = "foo"
    us-west-2 = "foo"
  }
}

variable "test_list" {
  type = list(string)
}

variable "test_map" {
  type = map(string)
}

variable "bar" {
  default = "baz"
}

variable "foo" {}

resource "aws_instance" "foo" {
  num  = "2"
  bar  = var.bar
  list = var.test_list
  map  = var.test_map
  tags = {
    yor_trace = "044acc25-f1ea-4d88-84c2-3e39cef1a041"
  }
}

resource "aws_instance" "bar" {
  foo = var.foo
  bar = var.amis[var.foo]
  baz = var.amis["us-east-1"]
  tags = {
    yor_trace = "7afbadc7-edbb-4c55-a681-a54da1a0bd80"
  }
}
