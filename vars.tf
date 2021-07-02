variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-00d8153083ea8ce14"
  }
}
