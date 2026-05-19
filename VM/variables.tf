variable "environment" {
    type=string
    description = "the env type"
    default = "'staging'"
  
}    

variable "storage_disk" {
    type = number
    description = "the size of the storage disk in GB"
    default = 80
}

variable "is_delete_os_disk_on_termination" {
    type = bool
    description = "whether to delete the OS disk when the VM is deleted"
    default = true
}