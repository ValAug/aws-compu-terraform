#---variable/root---

variable "ec2s"{
  description = "Map vms names configuration"
  type = map(any)
  default = {
    linux-vm = {
      vm_type = "t2.micro",
      vm_count = 1
    },
    ubuntu-vm = {
      vm_type = "t2.medium",
      vm_count = 1
    }
  }
}
