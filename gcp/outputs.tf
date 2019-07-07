output "external_ip" {
  value = "${google_compute_instance.hpcsdev.network_interface.0.access_config.0.assigned_nat_ip}"
}

# output "external-ip-web-2" {
#   value = "${google_compute_instance.hpcsdev-web-2.network_interface.0.access_config.0.assigned_nat_ip}"
# }
