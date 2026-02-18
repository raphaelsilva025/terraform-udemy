resource "aws_key_pair" "key" {
  key_name   = "aws-key-${var.environment}"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "virtual-machine" {
  ami                         = "ami-02003f9f0fde924ea"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true


  tags = {
    Name = "vm-${var.environment}"
  }
}