resource "aws_vpc" "myvpc" {
    cidr_block = var.vpccidr
    tags = {
      Name = var.vpcname
      environment = var.env
      terraformmanaged = "true"
    }
 }