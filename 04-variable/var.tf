variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}


variable "sample5" {
  default = "Hello"
}


variable "sample6" {
  default = "Hello"
}


variable "sample7" {
  default = [
    "Hello",
    1000,
    true,
    "world"]
}


variable "sample8" {
  default = {
   string = "Hello",
    number = 1000,
    boolean = true,
  }
}

output "types" {
  value = "Variable sample6 - ${var.sample6}, first value in list - ${var.sample7[0]}, Boolean value of - ${var.sample8["boolean"]}  "
}