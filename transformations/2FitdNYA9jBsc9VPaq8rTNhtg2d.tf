import {
  to = segment_transformation.id-2FitdNYA9jBsc9VPaq8rTNhtg2d
  id = "2FitdNYA9jBsc9VPaq8rTNhtg2d"
}

resource "segment_transformation" "id-2FitdNYA9jBsc9VPaq8rTNhtg2d" {
  destination_metadata_id = "54521fdc25e721e32a72ef04"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "event = \"Read Blog\" and properties.blog_title = \"Ulterior Motives\""
  name           = "Blog title = Ulterior motives"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}