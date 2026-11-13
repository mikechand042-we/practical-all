output "instance_id" {
    value = aws_instance.main.id
  
}
output "public_id" {
    value = aws_instance.main.public_ip
  
}
output "website_url" {
    value = "http://${aws_instance.main.public_ip}"
  
}
output "secruity_group_id" {
    value = aws_security_group.sg.id
  
}