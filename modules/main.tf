terraform {
  required_version = "~> 1.3.0" # Required terraform CLI Version on that system
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}
variable "min_number" {
  type        = number
  default     = 1
}
variable "max_number" {
  type        = number
  default     = 100
 }
resource "random_integer" "example" {
  min = "${var.min_number}"
  max = "${var.max_number}"
}

output "random_number" {
  value = random_integer.example.result
}
