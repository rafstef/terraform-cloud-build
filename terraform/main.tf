provider "google" {}

resource "google_sql_database_instance" "master" {
    name = "master-instance"
    database_version = "POSTGRES_11"
    region  = "europe-west1"
    provider = google-beta
    settings {
        tier = "db-f1-micro"
    }
}


terraform {
 backend "gcs" {
   prefix  = "terraform/state"
 }
}