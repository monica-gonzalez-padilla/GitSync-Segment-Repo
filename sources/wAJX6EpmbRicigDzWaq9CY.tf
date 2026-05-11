import {
  to = segment_source.id-wAJX6EpmbRicigDzWaq9CY
  id = "wAJX6EpmbRicigDzWaq9CY"
}

resource "segment_source" "id-wAJX6EpmbRicigDzWaq9CY" {
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
  name = "Website Source DEV"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "website_source_dev"
}