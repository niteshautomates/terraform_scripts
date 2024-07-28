output "hello-world" {
  value = "Hello, ${var.username} \n My age is ${var.age} and Sex is ${var.gender[1]} and ${var.users[1]}"

}


output "print-list" {
  value = join("==>", var.users)

}

output "print-upper-case" {
  value = upper(var.users[3])

}

output "print-lower-case" {
  value = lower(var.users[1])

}
output "print-userAgeMap" {
  value = "My name is ${var.username} and my age is ${lookup(var.useragemap, "${var.username}")}"
}
