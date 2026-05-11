import {
  to = segment_reverse_etl_model.id-vrU7Sd7jUdct6s5MnfzVtX
  id = "vrU7Sd7jUdct6s5MnfzVtX"
}

resource "segment_reverse_etl_model" "id-vrU7Sd7jUdct6s5MnfzVtX" {
  description             = " "
  enabled                 = true
  name                    = "Companies"
  query                   = "Select * from  `monica-demo-370122.demo_dataset1.Companies`"
  query_identifier_column = "company_name"
  source_id               = "qLVZGUoz11VWDxCkA3vREw"
}