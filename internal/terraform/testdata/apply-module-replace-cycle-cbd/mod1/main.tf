resource "aws_instance" "a" {
  require_new = "new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "4a94fea2-e7ee-422f-8935-4794838b9e98"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
