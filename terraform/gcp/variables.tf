# This should be populated by Terraform Cloud
variable "GCP_CREDENTIALS" {
  type        = string
  sensitive   = true
  description = "The GCP credential JSON file content"
}