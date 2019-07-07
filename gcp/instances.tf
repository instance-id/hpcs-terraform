// Google Cloud instances
// --- HPCSDev Web-1 -----------------------------------------------------

resource "google_compute_instance" "hpcsdev" {
  name                = "hpcsdev"
  machine_type        = "${var.machine_type_custom_ram}"
  zone                = "${var.zone}"
  tags                = ["${var.name}-web-1", "http-server", "https-server"]
  deletion_protection = true

  labels = {
    server-type = "web-1"
  }

  boot_disk {
    auto_delete = "false"

    initialize_params {
      image = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20190320"
      size  = "20"
    }
  }

  network_interface {
    //subnetwork = "${google_compute_subnetwork.public_subnet.name}"
    network = "default"

    access_config {
      nat_ip = "${var.natip}"
    }
  }

  service_account {
    email  = "${var.service-acct-email}"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  # NEEDED TO PREVENT DISK ATTACHMENT LOOP
  lifecycle {
    ignore_changes = ["attached_disk"]
  }
}

# // --- HPCSDev Web-2 -----------------------------------------------------
# resource "google_compute_instance" "hpcsdev-web-2" {
#   name                = "hpcsdev-web-2"
#   project             = "${var.name}"
#   machine_type        = "${var.machine_type}"
#   zone                = "${var.zone2}"
#   tags                = ["${var.name}-web-2", "http-server", "https-server"]
#   deletion_protection = false

#   labels = {
#     server-type = "web-2"
#   }

#   boot_disk {
#     auto_delete = "false"

#     initialize_params {
#       image = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20190320"
#       size  = "20"
#     }
#   }

#   network_interface {
#     network    = "${google_compute_network.hpcsdev-web-2.self_link}"
#     subnetwork = "${google_compute_subnetwork.hpcsdev-web-2-public.self_link}"

#     access_config {
#       nat_ip       = "${google_compute_address.hpcsdev-web-2-ip.address}"
#       network_tier = "STANDARD"
#     }
#   }

#   service_account {
#     email  = "${var.service-acct-email}"
#     scopes = ["https://www.googleapis.com/auth/cloud-platform"]
#   }

#   # YOU NEED THIS TO PREVENT DISK ATTACHMENT LOOP
#   lifecycle {
#     ignore_changes = ["attached_disk"]
#   }

#   provisioner "file" {
#     source      = ".scripts/setup.sh"
#     destination = "/home/${var.compute_ssh_user}/setup.sh"

#     connection {
#       host        = "${google_compute_address.hpcsdev-web-2-ip.address}"
#       type        = "ssh"
#       user        = "${var.compute_ssh_user}"
#       private_key = "${file("~/.ssh/id_rsa.gcp")}"
#     }
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo ./home/${var.compute_ssh_user}/setup.sh",
#     ]

#     connection {
#       host        = "${google_compute_address.hpcsdev-web-2-ip.address}"
#       type        = "ssh"
#       user        = "${var.compute_ssh_user}"
#       private_key = "${file("~/.ssh/id_rsa.gcp")}"
#     }
#   }
# }
