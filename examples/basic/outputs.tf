output "id" {
  description = "UUID of the added ssh keypair"
  value       = module.ssh_keypair.id
}

output "fingerprint" {
  description = "A fingerprint of your ssh keypair"
  value       = module.ssh_keypair.fingerprint
}
