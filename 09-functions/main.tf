variable "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.10.35"
    }
     "user"      = {
      "private_ip" = "172.31.4.61"
      }
   }
}

output "test" {
  value = var.test["catalogue"]
}