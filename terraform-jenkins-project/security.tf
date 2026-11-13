resource "aws_security_group" "sg" {
    name = "sg"
    description = "secrutiy group for ec2"
    vpc_id = var.vpc_id
    #Allow http trafic
    ingress  {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      Name = "my-sg"
    }
  
}