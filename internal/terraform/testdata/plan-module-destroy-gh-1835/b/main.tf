variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    yor_trace = "322a808a-c2df-4966-af61-a00be1b611e7"
  }
}
