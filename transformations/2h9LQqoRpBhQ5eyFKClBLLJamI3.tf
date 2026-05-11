import {
  to = segment_transformation.id-2h9LQqoRpBhQ5eyFKClBLLJamI3
  id = "2h9LQqoRpBhQ5eyFKClBLLJamI3"
}

resource "segment_transformation" "id-2h9LQqoRpBhQ5eyFKClBLLJamI3" {
  destination_metadata_id = "66562f8b0a10da09646cadd0"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(context.type = \"Tracking Plan Modified\")"
  name           = "Tracking Plan Modified Event"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "mWdKwdCWbed73ptDnoVfNS"
}