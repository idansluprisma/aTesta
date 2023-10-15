resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "adc57cc9-9fdb-4fd5-9bf0-a3dce3ed297a"
  }
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  tags = {
    yor_trace = "9de50dfb-f11f-4f70-a3fe-98bc0232c744"
  }
}
