import {
  to = segment_source.id-84fZNH9XZP7zx56JpjQ41m
  id = "84fZNH9XZP7zx56JpjQ41m"
}

resource "segment_source" "id-84fZNH9XZP7zx56JpjQ41m" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Forwarded Event Violations"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "forwarded_event_violations"
}