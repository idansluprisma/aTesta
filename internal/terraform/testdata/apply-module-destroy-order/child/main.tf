resource "aws_instance" "a" {
  id = "a"
  tags = {
    yor_trace = "c6a7b9f5-6df1-4d20-a639-670cbc3f10d2"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
