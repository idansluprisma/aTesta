resource "aws_instance" "foo" {
  count    = 2
  num      = "2"
  computed = data.aws_vpc.bar[count.index].id

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "432a1b43-85df-4622-aab5-e9ab8cdb56d6"
  }
}

data "aws_vpc" "bar" {
  count = 2
  foo   = count.index
}
