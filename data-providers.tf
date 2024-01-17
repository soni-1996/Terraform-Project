data "aws_subnets" "mysubnet" {
    filter {
    name   = "vpc-id"
    values = [aws_default_vpc.myvpc.id]
  }
}

data "aws_ami" "myami" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*"]
    }
  
}