output "id" {
  description = "UUID of the added ssh keypair"
  value       = module.ssh_keypair.ssh_keypair_id
}
