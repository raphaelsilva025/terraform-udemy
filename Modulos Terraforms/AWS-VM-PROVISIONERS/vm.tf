resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "virtual-machine" {
  ami                         = "ami-02003f9f0fde924ea"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true


  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./aws-key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.subnet_id} >> /tmp/network_info.txt",
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.security_group_id} >> /tmp/network_info.txt"
    ]
  }

  provisioner "file" {
    source      = "./teste.txt"
    destination = "/temp/exemplo.txt"
  }

  provisioner "file" {
    source      = "ami used: ${self.ami}"
    destination = "/temp/ami.txt"
  }

  tags = {
    Name = "vm-terraform"
  }
}