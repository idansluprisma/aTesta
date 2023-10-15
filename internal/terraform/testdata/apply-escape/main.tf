resource "aws_instance" "bar" {
  foo = "${"\"bar\""}"
  tags = {
    yor_trace = "e343110a-84da-4dba-ac9a-cd18138b4595"
  }
}
