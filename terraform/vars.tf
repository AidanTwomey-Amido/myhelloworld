variable "region" {
  default = "eu-west-1"
}
variable "bucket" {
  default = "itrentimportcodebuildcache"
}

variable "role" {
  default = "aws_iam_role.example.name"
}