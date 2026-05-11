import {
  to = segment_reverse_etl_model.id-r4SZy24bpoLMUMXCCca1wQ
  id = "r4SZy24bpoLMUMXCCca1wQ"
}

resource "segment_reverse_etl_model" "id-r4SZy24bpoLMUMXCCca1wQ" {
  description             = " "
  enabled                 = true
  name                    = "Model 2"
  query                   = "Select * from  `monica-demo-370122.demo_dataset1.Active Users`"
  query_identifier_column = "user_Id"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}