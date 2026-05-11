import {
  to = segment_source.id-n9sC9u9s1YoRPobhD2zqsF
  id = "n9sC9u9s1YoRPobhD2zqsF"
}

resource "segment_source" "id-n9sC9u9s1YoRPobhD2zqsF" {
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
  name = "Coda Workbook Demo Test"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "coda_workbook_demo_test"
}