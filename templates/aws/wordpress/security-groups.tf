# Wordpress security group
resource "aws_security_group" "wordpress" {
  name        = "wordpress"
  description = "Security group for wordpress"

  tags {
    Name = "wordpress"
  }
}

resource "aws_security_group_rule" "wordpress_allow_all" {
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.wordpress.id}"
}

resource "aws_security_group_rule" "wordpress_ssh" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.wordpress.id}"
}

resource "aws_security_group_rule" "wordpress_http" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.wordpress.id}"
}

resource "aws_security_group_rule" "wordpress_http2" {
  type            = "ingress"
  from_port       = 8000
  to_port         = 8000
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.wordpress.id}"
}

resource "aws_security_group_rule" "wordpress_http3" {
  type            = "ingress"
  from_port       = 8086
  to_port         = 8086
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.wordpress.id}"
}
