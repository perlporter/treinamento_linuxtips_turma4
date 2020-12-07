resource "aws_instance" "web" {
  ami           = "ami-0c3c87b7d583d618f"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
