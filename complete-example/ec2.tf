resource "aws_instance" "expense" {
        for_each = var.instances # this varibale is map
        # for each will give us a special variable name called each
        ami = "ami-09c813fb71547fc4f"
        instance_type = each.value 
        vpc_security_group_ids = [aws_security_group.ssh_sg_terraform.id]
        tags = {
            Name = each.key
        }
    }

resource "aws_security_group" "ssh_sg_terraform" {
    name = "allow_ssh"
    description = "Allow port number 22 for SSH access"


    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"  
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}
