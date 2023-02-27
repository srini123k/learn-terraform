variable "d1" {
  default = 5
}

resource "null_resource" "nothing" {
  count = var.d1
}

variable "d2" {
  default = [0, 1, 3, 2, 4]
}

resource "null_resource" "d2" {
  count = length(var.d2)
}

variable "d3" {
  default ={
    apple ={
      name="apple"
    count=5
  }
  }
  banana ={
    name="banana"
    count=3
  }
}

resource "null_resource" "d3" {
  for_each = var.d3
}

resource "null_resource" "d2" {
  count = length(var.d2)
}