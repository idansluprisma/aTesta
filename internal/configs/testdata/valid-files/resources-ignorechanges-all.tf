resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "fd99f3af-dce5-4f1f-b43f-f050c7df0b85"
  }
}
