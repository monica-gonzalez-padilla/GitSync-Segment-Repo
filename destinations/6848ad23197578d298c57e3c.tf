import {
  to = segment_destination.id-6848ad23197578d298c57e3c
  id = "6848ad23197578d298c57e3c"
}

resource "segment_destination" "id-6848ad23197578d298c57e3c" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5a4d24dcc5836400017188f6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Personas Facebook Custom Audiences"
  settings = jsonencode({
    account           = ""
    specialAdCategory = ""
  })
  source_id = "6Fh2bBzsdY7GdrSpHEjFu4"
}