resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "4adebfa6-0cd0-4c3a-ab5f-966ad21d8f86"
  }
}
