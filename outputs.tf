#---outputs/root---

output "ami_info" {
  description = "AMI's information"
  value = [for x in module.ec2_vm[*]: x]
}