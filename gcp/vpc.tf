// --- Web-1 -------------------
resource "google_compute_network" "default" {
  name        = "default"
  description = "Default network for the project"
}

resource "google_compute_subnetwork" "default" {
  name          = "${var.subnet_name}"
  ip_cidr_range = "${var.subnet_cidr}"
  network       = "${google_compute_network.default.self_link}"
  region        = "${var.region}"
}

// --- Web-2 -------------------
resource "google_compute_address" "hpcsdev-web-2-ip" {
  name         = "hpcsdev-web-2-ip"
  project      = "${var.name}"
  region       = "${var.region2}"
  network_tier = "STANDARD"
}

resource "google_compute_network" "hpcsdev-web-2" {
  name                    = "hpcsdev-web-2"
  project                 = "${var.name}"
  description             = "HPCSDev Web 2 Network"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "hpcsdev-web-2-public" {
  name          = "${var.subnet-name-web-2}"
  project       = "${var.name}"
  ip_cidr_range = "${var.subnet-cidr-web-2}"
  network       = "${google_compute_network.hpcsdev-web-2.id}"
  region        = "${var.region2}"
}
