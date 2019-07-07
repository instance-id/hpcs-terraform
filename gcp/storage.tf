// --- HPCSDev Web 1 -----------------------------------------------------
// --- HPCSDev Web-1 Mongodb -------------------
resource "google_compute_disk" "hpcs-mongodb" {
  name = "hpcs-mongodb"
  type = "pd-ssd"
  zone = "${var.zone}"
  size = "10"
}

resource "google_compute_attached_disk" "default" {
  disk       = "${google_compute_disk.hpcs-mongodb.id}"
  instance   = "${google_compute_instance.hpcsdev.id}"
  depends_on = ["google_compute_disk.hpcs-mongodb"]
  zone       = "${var.zone}"
}

// --- HPCSDev Web-1 Data -------------------
resource "google_compute_disk" "hpcs-data-disc" {
  name = "hpcs-data-disc"
  type = "pd-ssd"
  zone = "${var.zone}"
  size = "20"
}

resource "google_compute_attached_disk" "hpcs-data" {
  disk       = "${google_compute_disk.hpcs-data-disc.id}"
  instance   = "${google_compute_instance.hpcsdev.id}"
  depends_on = ["google_compute_disk.hpcs-data-disc"]
  zone       = "${var.zone}"
}

// --- HPCSDev Web 2 -----------------------------------------------------
# // --- HPCSDev Web 2 data -------------------
# resource "google_compute_disk" "hpcs-web-2-data-disc" {
#   name    = "hpcs-web-2-data-disc"
#   project = "${var.name}"
#   type    = "pd-ssd"
#   zone    = "${var.zone2}"
#   size    = "20"
# }

# resource "google_compute_attached_disk" "hpcs-web-2-data" {
#   project    = "${var.name}"
#   disk       = "${google_compute_disk.hpcs-web-2-data-disc.id}"
#   instance   = "${google_compute_instance.hpcsdev-web-2.id}"
#   depends_on = ["google_compute_disk.hpcs-web-2-data-disc"]
#   zone       = "${var.zone2}"
# }
