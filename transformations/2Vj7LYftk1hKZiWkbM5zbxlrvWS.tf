import {
  to = segment_transformation.id-2Vj7LYftk1hKZiWkbM5zbxlrvWS
  id = "2Vj7LYftk1hKZiWkbM5zbxlrvWS"
}

resource "segment_transformation" "id-2Vj7LYftk1hKZiWkbM5zbxlrvWS" {
  destination_metadata_id = "64f1fdc8a616af48bdf3772c"
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "type = \"identify\""
  name           = "Block Identify Events from Destination Function"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}