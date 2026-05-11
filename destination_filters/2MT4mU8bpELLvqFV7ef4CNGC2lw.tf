import {
  to = segment_destination_filter.id-63b8ab11f9d33c81f73430ad_2MT4mU8bpELLvqFV7ef4CNGC2lw
  id = "63b8ab11f9d33c81f73430ad:2MT4mU8bpELLvqFV7ef4CNGC2lw"
}

resource "segment_destination_filter" "id-63b8ab11f9d33c81f73430ad_2MT4mU8bpELLvqFV7ef4CNGC2lw" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "63b8ab11f9d33c81f73430ad"
  enabled        = true
  if             = "contains ( properties.email , \"@segment.com\" )"
  source_id      = "5Q3P5v2mfBPGwtWEMEGD4q"
  title          = "Do not Send Test data emails contains @Segment"
}