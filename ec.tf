resource "aws_instance" "demoinstance" {
  ami                         = "ami-0a31f06d64a91614b"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "keypair"
  vpc_security_group_ids      = [aws_security_group.demosg.id]
  subnet_id                   = aws_subnet.public_subnet-1.id
  associate_public_ip_address = "true"
  user_data                   = file("data.sh")
  tags = {
    Name = "ec"
  }
}
