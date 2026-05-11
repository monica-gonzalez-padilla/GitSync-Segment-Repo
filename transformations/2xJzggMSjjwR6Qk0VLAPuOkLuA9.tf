import {
  to = segment_transformation.id-2xJzggMSjjwR6Qk0VLAPuOkLuA9
  id = "2xJzggMSjjwR6Qk0VLAPuOkLuA9"
}

resource "segment_transformation" "id-2xJzggMSjjwR6Qk0VLAPuOkLuA9" {
  destination_metadata_id = "54521fdc25e721e32a72ef04"
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "!(event = \"New FIlter\")"
  name           = "test 2"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}