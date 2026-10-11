data "google_storage_object_signed_url" "storage_object_signed_url_lookup" {
  for_each = var.storage_object_signed_url_lookup

  bucket            = each.value.bucket
  path              = each.value.path
  content_md5       = each.value.content_md5
  content_type      = each.value.content_type
  credentials       = each.value.credentials
  duration          = each.value.duration
  extension_headers = each.value.extension_headers
  http_method       = each.value.http_method
}

