terraform {
  required_providers {
    pingfederate = {
      source  = "pingidentity/pingfederate"
      version = "1.4.3"
    }
  }
}

provider "pingfederate" {
  username       = var.username
  password       = var.admin_password
  https_host     = var.url
  admin_api_path = "/pf-admin-api/v1" # Configuration options
  insecure_trust_all_tls = true
  product_version = "12.1.0"
}
