import {
  to = segment_transformation.id-2MT4mU8bpELLvqFV7ef4CNGC2lw
  id = "2MT4mU8bpELLvqFV7ef4CNGC2lw"
}

resource "segment_transformation" "id-2MT4mU8bpELLvqFV7ef4CNGC2lw" {
  destination_metadata_id = "632b1116e0cb83902f3fd717"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "contains ( properties.email , \"@segment.com\" )"
  name           = "Do not Send Test data emails contains @Segment"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "5Q3P5v2mfBPGwtWEMEGD4q"
}