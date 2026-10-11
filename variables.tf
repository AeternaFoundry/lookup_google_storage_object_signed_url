variable "storage_object_signed_url_lookup" {
  description = <<EOT
Map of storage_object_signed_url_lookup, attributes below
Required:
    - bucket
    - path
Optional:
    - content_md5
    - content_type
    - credentials
    - duration
    - extension_headers
    - http_method
EOT

  type = map(object({
    bucket            = string
    path              = string
    content_md5       = optional(string)
    content_type      = optional(string)
    credentials       = optional(string)
    duration          = optional(string)
    extension_headers = optional(map(string))
    http_method       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_object_signed_url_lookup : (
        v.http_method == null || (contains([for v in ["GET", "HEAD", "PUT", "DELETE"] : lower(v)], lower(v.http_method)))
      )
    ])
    error_message = "must be one of: \"GET\", \"HEAD\", \"PUT\", \"DELETE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

