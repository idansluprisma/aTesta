resource "aws_instance" "foo" {
  user_data   = "x"
  require_new = "yes"

  set = [{
    a = "1"
    b = "2"
  }]

  lst = ["j", "k"]

  lifecycle {
    ignore_changes = ["require_new"]
  }
  tags = {
    yor_trace = "af01c158-6420-41d1-b514-40ea31b96b58"
  }
}
