variable "route53_resolver_firewall_rules" {
  description = <<EOT
Map of route53_resolver_firewall_rules, attributes below
Required:
    - action
    - firewall_rule_group_id
    - name
    - priority
Optional:
    - block_override_dns_type
    - block_override_domain
    - block_override_ttl
    - block_response
    - confidence_threshold
    - dns_threat_protection
    - firewall_domain_list_id
    - firewall_domain_redirection_action
    - q_type
    - region
EOT

  type = map(object({
    action                             = string
    firewall_rule_group_id             = string
    name                               = string
    priority                           = number
    block_override_dns_type            = optional(string)
    block_override_domain              = optional(string)
    block_override_ttl                 = optional(number)
    block_response                     = optional(string)
    confidence_threshold               = optional(string)
    dns_threat_protection              = optional(string)
    firewall_domain_list_id            = optional(string)
    firewall_domain_redirection_action = optional(string)
    q_type                             = optional(string)
    region                             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_firewall_rules : (
        v.block_override_domain == null || (length(v.block_override_domain) >= 1 && length(v.block_override_domain) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_firewall_rules : (
        v.block_override_ttl == null || (v.block_override_ttl >= 0 && v.block_override_ttl <= 604800)
      )
    ])
    error_message = "must be between 0 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_firewall_rules : (
        v.firewall_domain_list_id == null || (length(v.firewall_domain_list_id) >= 1 && length(v.firewall_domain_list_id) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_firewall_rules : (
        length(v.firewall_rule_group_id) >= 1 && length(v.firewall_rule_group_id) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

