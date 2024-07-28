variable "username" {

  type    = string

}

variable "age" {
  default = 3
  type    = number


}

variable "gender" {

  type    = list(any)
  default = ["M", "F"]

}


variable "users" {
  type = list(any)
  default = [ "Nitesh","Mayuri","Siya","Dobby" ]
  
}

variable "useragemap" {
  type = map(any)
  default = {
    Nitesh = 32
    Siya = 2.5
  }
}