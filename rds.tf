
resource "aws_db_subnet_group" "default" {
  name       = "lks-db-subnet-group"
  subnet_ids = [aws_subnet.private_1a.id, aws_subnet.private_1b.id]

  tags = {
    Name = "lks-db-subnet-group"
  }
}

resource "aws_db_instance" "lks_postgres" {
  identifier              = "lks-postgres"
  engine                  = "postgres"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_subnet_group_name    = aws_db_subnet_group.default.name
  name                    = var.db_name
  username                = var.db_username
  password                = var.db_password
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = true
}
