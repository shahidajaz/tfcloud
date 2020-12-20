provider "aws" {
    region = "us-east-1"
    }

resource "aws_vpc" "myvpc5" {
    cidr_block = "15.0.0.0/16"
    tags = {
        name = "myvpc5"
    }
}
