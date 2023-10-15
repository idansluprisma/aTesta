resource "aws_instance" "foo" {
  num = 2
  tags = {
    yor_trace = "6c469b3e-60c2-410a-a00e-bbeb94df9617"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "ff4e47f5-2ffb-4416-8dd2-4a22b6945f71"
  }
}
