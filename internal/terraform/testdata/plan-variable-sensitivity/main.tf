variable "sensitive_var" {
  default   = "foo"
  sensitive = true
}

resource "aws_instance" "foo" {
  foo = var.sensitive_var
  tags = {
    yor_trace = "50224513-8ed8-4271-a24e-c780566bfca2"
  }
}