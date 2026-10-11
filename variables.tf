variable "nel_settings" {
  description = <<EOT
Map of nel_settings, attributes below
Required:
    - value
    - zone_id
EOT

  type = map(object({
    value = object({
      enabled = bool
    })
    zone_id = string
  }))
}

