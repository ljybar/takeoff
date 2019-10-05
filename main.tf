 provider "google" {
   credentials = "${file("PROD-7b8c3ce77c6f.json")}"
   project = "prod-254913"
   region = "europe-west1"
   zone = "europe-west1-b"
   }

 resource "google_compute_instance" "nginx" {
  name         = "nginx"
  machine_type = "f1-micro"
  

  tags = ["test"]

  boot_disk {
    initialize_params {
      image = "test-nginx-vm"
    }
  }

#  scrtch_disk {
#  }
  
  network_interface {
    network = "default"
	access_config {
	}
  }	
#  metadata {
#    sshKeys = "test:${file(vat.ssh_public_key_filepath)}""
#  }
}  
