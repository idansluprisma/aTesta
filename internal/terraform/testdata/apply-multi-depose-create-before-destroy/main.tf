variable "require_new" {
  type = string
}

resource "aws_instance" "web" {
  // require_new is a special attribute recognized by testDiffFn that forces
  // a new resource on every apply
  require_new = var.require_new
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "ebed8915-3a2f-4146-9938-fd1859a19ff2"
  }
}
