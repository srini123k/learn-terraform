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