resource "google_compute_instance" "test-vm" {
  name         = "test-vm"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"

  network_interface {
    network = "custom-vpc-tf"
    subnetwork = "sug-sg"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
      size = 20
    }
  }
}