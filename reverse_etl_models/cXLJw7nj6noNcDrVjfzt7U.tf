import {
  to = segment_reverse_etl_model.id-cXLJw7nj6noNcDrVjfzt7U
  id = "cXLJw7nj6noNcDrVjfzt7U"
}

resource "segment_reverse_etl_model" "id-cXLJw7nj6noNcDrVjfzt7U" {
  description             = " "
  enabled                 = true
  name                    = "User Traits SPE Example"
  query                   = "SELECT \n  -- Replace 'user_id' with the actual column name you use for your user identifiers\n  client_session_id, \n  SUM(CAST(total_time_watched__seconds_ AS FLOAT64)) AS midday_watch_time\nFROM \n  `monica-demo-370122.demo_dataset1.spe_sample_track_events`\nWHERE \n  event_name = 'Content Session Completed' \n  AND daypart = 'midday'\nGROUP BY \n  1"
  query_identifier_column = "client_session_id"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}