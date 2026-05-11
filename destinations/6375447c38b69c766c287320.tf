import {
  to = segment_destination.id-6375447c38b69c766c287320
  id = "6375447c38b69c766c287320"
}

resource "segment_destination" "id-6375447c38b69c766c287320" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60ad61f9ff47a16b8fb7b5d9"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Google Analytics"
  settings = jsonencode({
    apiSecret     = "••••••••••C0sQ"
    measurementId = "G-ZNR1K8B5BM"
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}