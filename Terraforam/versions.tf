terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

provider "kubectl" {
    host="https://127.0.0.1:38595"
    load_config_file = false

  
}