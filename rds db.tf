resource "aws_db_instance" "rds_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.34" # Use a supported version
  instance_class       = "db.t3.micro" # Use a newer instance type
  db_name              = "three_tier_db"  # Correct argument name
  username             = var.db_username
  password             = var.db_password
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db-subnet-group"
  subnet_ids = aws_subnet.private_subnet[*].id
}
