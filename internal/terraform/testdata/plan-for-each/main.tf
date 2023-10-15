# maps
resource "aws_instance" "foo" {
  for_each = {
    a = "thing"
    b = "another thing"
    c = "yet another thing"
  }
  num = "3"
  tags = {
    yor_trace = "5829ebc3-5470-4216-892d-b6bee5c6b1d9"
  }
}

# sets
resource "aws_instance" "bar" {
  for_each = toset([])
  tags = {
    yor_trace = "5e89ce3a-9074-46f0-9eaf-74d6522701c9"
  }
}
resource "aws_instance" "bar2" {
  for_each = toset(["z", "y", "x"])
  tags = {
    yor_trace = "8379809b-1732-4beb-af37-e6717e812671"
  }
}

# an empty map should generate no resource
resource "aws_instance" "baz" {
  for_each = {}
  tags = {
    yor_trace = "ebfb3b68-eb99-4365-882a-9402a2aea50b"
  }
}

# references
resource "aws_instance" "boo" {
  foo = aws_instance.foo["a"].num
  tags = {
    yor_trace = "dafed35c-4b93-408d-af55-6b86e08091e8"
  }
}

resource "aws_instance" "bat" {
  for_each = {
    my_key = aws_instance.boo.foo
  }
  foo = each.value
  tags = {
    yor_trace = "06f6b732-8c4e-4483-a895-87150c1cd042"
  }
}

