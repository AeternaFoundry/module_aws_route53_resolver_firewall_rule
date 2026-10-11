output "route53_resolver_firewall_rules_id" {
  description = "Map of id values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_resolver_firewall_rules_action" {
  description = "Map of action values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "route53_resolver_firewall_rules_block_override_dns_type" {
  description = "Map of block_override_dns_type values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.block_override_dns_type if v.block_override_dns_type != null && length(v.block_override_dns_type) > 0 }
}
output "route53_resolver_firewall_rules_block_override_domain" {
  description = "Map of block_override_domain values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.block_override_domain if v.block_override_domain != null && length(v.block_override_domain) > 0 }
}
output "route53_resolver_firewall_rules_block_override_ttl" {
  description = "Map of block_override_ttl values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.block_override_ttl if v.block_override_ttl != null }
}
output "route53_resolver_firewall_rules_block_response" {
  description = "Map of block_response values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.block_response if v.block_response != null && length(v.block_response) > 0 }
}
output "route53_resolver_firewall_rules_confidence_threshold" {
  description = "Map of confidence_threshold values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.confidence_threshold if v.confidence_threshold != null && length(v.confidence_threshold) > 0 }
}
output "route53_resolver_firewall_rules_dns_threat_protection" {
  description = "Map of dns_threat_protection values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.dns_threat_protection if v.dns_threat_protection != null && length(v.dns_threat_protection) > 0 }
}
output "route53_resolver_firewall_rules_firewall_domain_list_id" {
  description = "Map of firewall_domain_list_id values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.firewall_domain_list_id if v.firewall_domain_list_id != null && length(v.firewall_domain_list_id) > 0 }
}
output "route53_resolver_firewall_rules_firewall_domain_redirection_action" {
  description = "Map of firewall_domain_redirection_action values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.firewall_domain_redirection_action if v.firewall_domain_redirection_action != null && length(v.firewall_domain_redirection_action) > 0 }
}
output "route53_resolver_firewall_rules_firewall_rule_group_id" {
  description = "Map of firewall_rule_group_id values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.firewall_rule_group_id if v.firewall_rule_group_id != null && length(v.firewall_rule_group_id) > 0 }
}
output "route53_resolver_firewall_rules_firewall_threat_protection_id" {
  description = "Map of firewall_threat_protection_id values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.firewall_threat_protection_id if v.firewall_threat_protection_id != null && length(v.firewall_threat_protection_id) > 0 }
}
output "route53_resolver_firewall_rules_name" {
  description = "Map of name values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_resolver_firewall_rules_priority" {
  description = "Map of priority values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.priority if v.priority != null }
}
output "route53_resolver_firewall_rules_q_type" {
  description = "Map of q_type values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.q_type if v.q_type != null && length(v.q_type) > 0 }
}
output "route53_resolver_firewall_rules_region" {
  description = "Map of region values across all route53_resolver_firewall_rules, keyed the same as var.route53_resolver_firewall_rules"
  value       = { for k, v in aws_route53_resolver_firewall_rule.route53_resolver_firewall_rules : k => v.region if v.region != null && length(v.region) > 0 }
}

