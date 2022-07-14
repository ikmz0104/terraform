provider "aws" {
  profile = "terraform" //IAM User
  region  = "ap-northeast-1"
}

//EC2インスタンスを起動
resource "aws_instance" "hello-world" {
  ami           = "ami-0b7546e839d7ace12"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
