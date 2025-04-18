
resource "aws_db_subnet_group" "default" {
  name       = "db-subnet-group"
  subnet_ids = ["subnet-12345678", "subnet-87654321"]
  tags = {
    Name = "LKS DB Subnet Group"
  }
}

resource "aws_db_instance" "postgres" {
  identifier         = "lks-postgres"
  engine             = "postgres"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  name               = "lksdb"
  username           = "admin"
  password           = "password123"
  db_subnet_group_name = aws_db_subnet_group.default.name
  skip_final_snapshot = true
}
