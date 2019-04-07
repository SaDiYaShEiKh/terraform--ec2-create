resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  associate_public_ip_address = "yes"
  key_name = "first_key"

  tags {
    Name = "test-instance"
  }
}