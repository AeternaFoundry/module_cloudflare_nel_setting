output "nel_settings_id" {
  description = "Map of id values across all nel_settings, keyed the same as var.nel_settings except keys with no id are omitted"
  value       = { for k, v in cloudflare_nel_setting.nel_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nel_settings_editable" {
  description = "Map of editable values across all nel_settings, keyed the same as var.nel_settings except keys with no editable are omitted"
  value       = { for k, v in cloudflare_nel_setting.nel_settings : k => v.editable if v.editable != null }
}
output "nel_settings_modified_on" {
  description = "Map of modified_on values across all nel_settings, keyed the same as var.nel_settings except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_nel_setting.nel_settings : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "nel_settings_value" {
  description = "Map of value values across all nel_settings, keyed the same as var.nel_settings except keys with no value are omitted"
  value       = { for k, v in cloudflare_nel_setting.nel_settings : k => v.value if v.value != null && length(v.value) > 0 }
}
output "nel_settings_zone_id" {
  description = "Map of zone_id values across all nel_settings, keyed the same as var.nel_settings except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_nel_setting.nel_settings : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

