resource "aws_instance" "main" {
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = var.key_name
    subnet_id     = var.subnet_id
    associate_public_ip_address =  true
    vpc_security_group_ids = [ aws_security_group.sg.id ]
    user_data = file("user_data.sh")
    tags = {
      Name = "my-ec2"
    }
  
}