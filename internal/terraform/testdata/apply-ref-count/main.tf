resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "ae3f9ea9-6278-46fd-bd53-516e22760b27"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "339993cc-7873-4e93-b934-9f04f3314242"
  }
}
