import {
  to = segment_destination.id-655e421015cc30d4f72dd304
  id = "655e421015cc30d4f72dd304"
}

resource "segment_destination" "id-655e421015cc30d4f72dd304" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5850d8b680412f644ff55df2"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = null
  }
  name = "Repeater Example"
  settings = jsonencode({
    endpoint   = "https://api.segment.io"
    repeatKeys = ["Noxuq3uPYsYlQt1KzG8Z61UZLDtiIaLV"]
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}