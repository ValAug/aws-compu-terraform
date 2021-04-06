#---outputs/module---

output "ubuntu_info" {
  value = data.aws_ami.latest_ubuntu.name
}

output ubuntu_ids {
  description = "IDs of Ubuntu instances"
  value       = aws_instance.ubuntu_vm.*.id
}

output "linux_info" {
  value = data.aws_ami.amazon_linux.name
}

output Linux_ids {
  description = "IDs of Linux instances"
  value       = aws_instance.linux_vm.*.id
}