terraform {
  backend "gcs" {
    bucket  = "tf-state-prod1989"
    prefix  = "terraform/state"
  }
}
