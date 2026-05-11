import {
  to = segment_source.id-2L94i4XMPu9gJFqWePaF1f
  id = "2L94i4XMPu9gJFqWePaF1f"
}

resource "segment_source" "id-2L94i4XMPu9gJFqWePaF1f" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "B0X0QmvMny"
  }
  name = "Mobile Example"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "mobile_example"
}