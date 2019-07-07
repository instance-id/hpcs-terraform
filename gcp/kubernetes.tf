# resource "google_container_cluster" "primary" {
#   name     = "app1-cluster"
#   location = "us-central1"
#   remove_default_node_pool = true
#   initial_node_count = 1
#   # Setting an empty username and password explicitly disables basic auth
#   master_auth {
#     username = ""
#     password = ""
#   }
# }
# resource "google_container_node_pool" "primary_preemptible_nodes" {
#   name       = "app1-node-pool"
#   location   = "us-central1"
#   cluster    = "${google_container_cluster.primary.name}"
#   node_count = 1
#   node_config {
#     preemptible  = true
#     machine_type = "f1-micro"
#     metadata {
#       disable-legacy-endpoints = "true"
#     }
#     oauth_scopes = [
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }
# output "client_certificate" {
#   value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
# }
# output "client_key" {
#   value = "${google_container_cluster.primary.master_auth.0.client_key}"
# }
# output "cluster_ca_certificate" {
#   value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
# }

