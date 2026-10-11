output "storage_object_signed_url_lookup_id" {
  description = "Map of id values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_object_signed_url_lookup_bucket" {
  description = "Map of bucket values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no bucket are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_object_signed_url_lookup_content_md5" {
  description = "Map of content_md5 values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no content_md5 are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.content_md5 if v.content_md5 != null && length(v.content_md5) > 0 }
}
output "storage_object_signed_url_lookup_content_type" {
  description = "Map of content_type values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no content_type are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "storage_object_signed_url_lookup_credentials" {
  description = "Map of credentials values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.credentials if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "storage_object_signed_url_lookup_duration" {
  description = "Map of duration values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no duration are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.duration if v.duration != null && length(v.duration) > 0 }
}
output "storage_object_signed_url_lookup_extension_headers" {
  description = "Map of extension_headers values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no extension_headers are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.extension_headers if v.extension_headers != null && length(v.extension_headers) > 0 }
}
output "storage_object_signed_url_lookup_http_method" {
  description = "Map of http_method values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no http_method are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.http_method if v.http_method != null && length(v.http_method) > 0 }
}
output "storage_object_signed_url_lookup_path" {
  description = "Map of path values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no path are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "storage_object_signed_url_lookup_signed_url" {
  description = "Map of signed_url values across all storage_object_signed_url_lookup, keyed the same as var.storage_object_signed_url_lookup except keys with no signed_url are omitted"
  value       = { for k, v in data.google_storage_object_signed_url.storage_object_signed_url_lookup : k => v.signed_url if v.signed_url != null && length(v.signed_url) > 0 }
}

