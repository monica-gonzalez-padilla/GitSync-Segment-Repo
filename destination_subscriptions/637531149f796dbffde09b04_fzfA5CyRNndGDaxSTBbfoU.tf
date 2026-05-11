import {
  to = segment_destination_subscription.id-637531149f796dbffde09b04_fzfA5CyRNndGDaxSTBbfoU
  id = "637531149f796dbffde09b04:fzfA5CyRNndGDaxSTBbfoU"
}

resource "segment_destination_subscription" "id-637531149f796dbffde09b04_fzfA5CyRNndGDaxSTBbfoU" {
  action_id            = "6CHmQRmGR9QiQAAVPzukE9"
  destination_id       = "637531149f796dbffde09b04"
  enabled              = false
  model_id             = null
  name                 = "Add to Cart"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    currency = {
      "@path" = "$.properties.currency"
    }
    data_stream_type     = "Web"
    engagement_time_msec = 1
    items = {
      "@arrayPath" = ["$.properties", {
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
        }
        item_brand = {
          "@path" = "$.brand"
        }
        item_category = {
          "@path" = "$.category"
        }
        item_id = {
          "@path" = "$.product_id"
        }
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = {
          "@path" = "$.price"
        }
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Product Added\""
}