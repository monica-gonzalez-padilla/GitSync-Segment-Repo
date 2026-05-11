import {
  to = segment_reverse_etl_model.id-khQVH3iVnKCdfikDums9G8
  id = "khQVH3iVnKCdfikDums9G8"
}

resource "segment_reverse_etl_model" "id-khQVH3iVnKCdfikDums9G8" {
  description             = " "
  enabled                 = true
  name                    = "Active Users"
  query                   = "Select * from  `monica-demo-370122.demo_dataset1.Active Users`\n"
  query_identifier_column = "user_id"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}