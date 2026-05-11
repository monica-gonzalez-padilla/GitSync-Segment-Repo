import {
  to = segment_source.id-5Q3P5v2mfBPGwtWEMEGD4q
  id = "5Q3P5v2mfBPGwtWEMEGD4q"
}

resource "segment_source" "id-5Q3P5v2mfBPGwtWEMEGD4q" {
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
  name = "Button Clicker"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "button_clicker"
}