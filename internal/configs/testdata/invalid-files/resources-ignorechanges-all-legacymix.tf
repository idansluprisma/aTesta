resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  tags = {
    yor_trace = "8ec71c3e-83b0-4f8b-b8f1-520483ee2635"
  }
}
