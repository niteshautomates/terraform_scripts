variable "access_key" {
  type = string
}


variable "secret_key" {
  type = string
}


variable "region" {
  type = string
  default = 'ap-south-1'

}


variable "instace_type" {
  type = string
}

variable "ami" {
  type = string
  default = 'ami-0429d68a1cd41ca80'
}
