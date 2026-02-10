output "vm_ip" {
  value       = aws_instance.virtual-machine.public_ip
  description = "Ip da VM criada na AWS"
}
