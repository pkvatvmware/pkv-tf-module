terraform {
  required_version = "~> 1.3.0" # Required terraform CLI Version on that system
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}
resource "random_integer" "example" {
  min = 1
  max = 100
}

output "random_number" {
  value = random_integer.example.result
}
