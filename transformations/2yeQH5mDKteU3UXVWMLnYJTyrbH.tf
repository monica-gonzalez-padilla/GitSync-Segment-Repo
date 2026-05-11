import {
  to = segment_transformation.id-2yeQH5mDKteU3UXVWMLnYJTyrbH
  id = "2yeQH5mDKteU3UXVWMLnYJTyrbH"
}

resource "segment_transformation" "id-2yeQH5mDKteU3UXVWMLnYJTyrbH" {
  destination_metadata_id = "54521fdc25e721e32a72ef04"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "userId = null"
  name           = "Drop events with null userId"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}