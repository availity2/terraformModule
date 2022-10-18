provider "aws"{
region = "us-east-2"
access_key = ""
secret_access_key = ""
}

resource "aws_vpc" "availity"{
	cidr_block = "10.0.0.0/16"
}
module "availity_webserver" {
	source = "../modules/webserver"
	vpc_id = aws_vpc.availity.id
	cidr_block = "10.0.0.0/16"
	webserver_name = "availity"
	ami =  "ami-097a2df4ac947655f"
}
