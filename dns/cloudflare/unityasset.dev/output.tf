output "cloudflare_record_NS" {
  value = cloudflare_zone.unityassetdev-cf-z.name_servers
}

output "status" {
  value = cloudflare_zone.unityassetdev-cf-z.status
}

