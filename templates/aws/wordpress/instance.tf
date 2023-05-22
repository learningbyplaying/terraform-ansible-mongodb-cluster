provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "Wordpress" {

 count = 1
 ami = "ami-0bb607148d8cf36fb"

 instance_type = "t2.small"

 tags = {
   Name = "Wordpress-${count.index}"
 }

 root_block_device {
     volume_type = "gp2"
     volume_size = "20"
 }


  associate_public_ip_address = true

  security_groups = [
      "${aws_security_group.wordpress.name}"
  ]

  key_name = "DataInnovationWorpress"

}
