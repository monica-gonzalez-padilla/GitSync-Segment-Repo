import {
  to = segment_source.id-hMkVHzDRvxieKShiLPAQDN
  id = "hMkVHzDRvxieKShiLPAQDN"
}

resource "segment_source" "id-hMkVHzDRvxieKShiLPAQDN" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Staging marketing website"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "staging_marketing_website"
}