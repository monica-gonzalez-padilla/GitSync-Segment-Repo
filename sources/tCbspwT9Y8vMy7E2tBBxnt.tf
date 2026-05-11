import {
  to = segment_source.id-tCbspwT9Y8vMy7E2tBBxnt
  id = "tCbspwT9Y8vMy7E2tBBxnt"
}

resource "segment_source" "id-tCbspwT9Y8vMy7E2tBBxnt" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "prod"
    },
  ]
  metadata = {
    id = "iUM16Md8P2"
  }
  name     = "HTTP API"
  settings = jsonencode({})
  slug     = "http_api"
}