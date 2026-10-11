resource "cloudflare_nel_setting" "nel_settings" {
  for_each = var.nel_settings

  value   = each.value.value
  zone_id = each.value.zone_id
}

