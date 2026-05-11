import {
  to = segment_source.id-rCnqDERQ6y6DxDSaEAok9L
  id = "rCnqDERQ6y6DxDSaEAok9L"
}

resource "segment_source" "id-rCnqDERQ6y6DxDSaEAok9L" {
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
  name = "Event Generator"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "event_generator"
}