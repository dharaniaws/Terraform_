resource "aws_db_subnet_group" "default" {
  name       = "new"
  subnet_ids = [aws_subnet.database_subnet-1.id, aws_subnet.database_subnet-2.id]
  tags = {
    Name = "My DB Subnet Group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = "mysql"
  engine_version         = "8.0.34"
  instance_class         = "db.t3.micro"
  multi_az               = "true"
  db_name                = "mydb"
  username               = "Dharani"
  password               = "dharani123"
  skip_final_snapshot    = "true"
  vpc_security_group_ids = [aws_security_group.database_sg.id]
}
