#---main/root---

module "ec2_vm" {
  source = "./ec2_compu"

  for_each = var.ec2s

  instances_type = each.value.vm_type
  instances_count = each.value.vm_count

}