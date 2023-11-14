output "current_region" {
  value = data.aws_region.current.name
}
output "current_account" {
  value = data.aws_caller_identity.current.account_id
}