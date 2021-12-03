output "id" {
  description = "UUID of the added ssh keypair"
  value       = nws_ssh_keypair.ssh_keypair.id
}

output "fingerprint" {
  description = "A fingerprint of your ssh keypair"
  value       = nws_ssh_keypair.ssh_keypair.fingerprint
}
