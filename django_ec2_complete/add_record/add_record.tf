# Step 1: Specify the provider
provider "aws" {
  region = "us-east-1"  # Replace with your AWS region
}

# Step 2: Add an A Record to the existing Hosted Zone
resource "aws_route53_record" "example_a_record" {
  zone_id = "Z0647616XMU7ND5R3W2N"  # Replace with your existing Hosted Zone ID
  name    = "terra.ziptieai.net" # Replace with the subdomain or root domain
  type    = "A"
  ttl     = 300               # Time-to-live in seconds
  records = ["18.232.69.232"]     # Replace with your public IP address
}