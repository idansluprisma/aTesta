terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    yor_trace = "116f7654-d880-48a4-8e45-61894df100d3"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    yor_trace = "64099294-c086-4846-8ecf-eb3f242c8f86"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}
