import {
  to = segment_reverse_etl_model.id-wwLCRVMw39HFYxhurJZ358
  id = "wwLCRVMw39HFYxhurJZ358"
}

resource "segment_reverse_etl_model" "id-wwLCRVMw39HFYxhurJZ358" {
  description             = " "
  enabled                 = true
  name                    = "SPE Sample Track Events"
  query                   = "SELECT\n  *\nFROM\n  `monica-demo-370122.demo_dataset1.spe_sample_track_events`;"
  query_identifier_column = "unique_event_id"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}