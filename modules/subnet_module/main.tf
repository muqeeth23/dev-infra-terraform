resource "aws_subnet" "mysn" {
    vpc_id = var.vpcid
    cidr_block = var.sncidr
    map_public_ip_on_launch = var.mapublicip
    tags = {
      Name = var.snname
      environment = var.env
      terraformmanaged = "true"
    }
  
}