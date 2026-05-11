import {
  to = segment_destination.id-655e4680e0533daba7756b5d
  id = "655e4680e0533daba7756b5d"
}

resource "segment_destination" "id-655e4680e0533daba7756b5d" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "60be92c8dabdd561bf6c9130"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = null
  }
  name = "Events from Repeater > S3"
  settings = jsonencode({
    awsRegion  = ""
    bucket     = ""
    iamRoleArn = ""
  })
  source_id = "muEYdPAZ9DnWyqJG4QAdVh"
}