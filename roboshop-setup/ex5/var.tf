
variable "instances" {
  default = {
    catalogue={
      name       = "catalogue1"
      type       = "t3.micro"
    }
    user={
      name       = "user1"
      type       = "t3.small"
    }
  }
}