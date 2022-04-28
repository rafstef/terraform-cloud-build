provider "google" {}

resource "google_sql_database_instance" "master" {
    name = "master-instance"
    database_version = "POSTGRES_11"
    region  = "europe-central1"
    provider = google-beta
    settings {
        tier = "db-f1-micro"
    }
}


terraform {
 backend "gcs" {
   bucket  = "5678758-terraform-tfstate"
   prefix  = "terraform/state"
 }
}