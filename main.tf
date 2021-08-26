terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
       version = "3.5.0"
    }
  }
}
provider "google" {
  credentials = file("credentials.json")

  project = "storied-cider-324120"
  region  = "us-west1"
  zone    = "us-west1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
 }
