output "config_rule_name" {
  description = "Name of the planned AWS Config rule."
  value       = aws_config_config_rule.s3_encryption.name
}

output "config_rule_arn" {
  description = "ARN of the planned AWS Config rule."
  value       = aws_config_config_rule.s3_encryption.arn
}
