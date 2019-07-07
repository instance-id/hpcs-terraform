resource "google_compute_firewall" "hpcsdev_firewall" {
  name    = "${var.name}-firewall"
  network = "${google_compute_network.default.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = "${var.ports-web1}"
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["${var.instance-tags-web-1}"]
}

resource "google_compute_firewall" "hpcsdev-firewall-web-2" {
  name    = "${var.name}-firewall-web-2"
  project = "${var.name}"
  network = "${google_compute_network.hpcsdev-web-2.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = "${var.ports-web2}"
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["${var.instance-tags-web-2}"]
}
