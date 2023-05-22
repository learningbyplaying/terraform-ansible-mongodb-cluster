provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "firstmongodb" {

 count = "${var.QUANTITY}"
 ami = "ami-38a01045"

 instance_type = "t2.micro"

 tags = {
   Name = "mongodb-${count.index}"
 }

 root_block_device {
     volume_type = "gp2"
     volume_size = "10"
 }

 associate_public_ip_address = true

 security_groups = [
     "${aws_security_group.mongodb.name}"
 ]

 key_name = "DataInnovationWorpress"

}
