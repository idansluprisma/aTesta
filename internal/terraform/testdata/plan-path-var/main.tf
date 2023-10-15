resource "aws_instance" "foo" {
  cwd    = "${path.cwd}/barpath"
  module = "${path.module}/foopath"
  root   = "${path.root}/barpath"
  tags = {
    yor_trace = "ef92d5f2-8f56-48ee-9f5f-41833f7ae0ad"
  }
}
