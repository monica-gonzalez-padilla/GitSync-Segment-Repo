import {
  to = segment_tracking_plan.id-tp_2yI9qacckoLV4HLXy5YpsVN1pK0
  id = "tp_2yI9qacckoLV4HLXy5YpsVN1pK0"
}

resource "segment_tracking_plan" "id-tp_2yI9qacckoLV4HLXy5YpsVN1pK0" {
  description = "description"
  name        = "Shake Shack Mobile App"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "DO NOT EDIT. Event generated to store end users consent preferences for Unify and Twilio Engage."
        properties = {
          context = {
            type = "object"
          }
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Segment Consent Preference Updated"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              app_version = {
                type = ["string"]
              }
              device_model = {
                type = ["string"]
              }
              network_connection_type = {
                type = ["string"]
              }
              opened_from_push_notification = {
                type = ["boolean"]
              }
              os_version = {
                type = ["string"]
              }
              platform = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "App Opened"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              cart_id = {
                type = ["integer"]
              }
              category = {
                type = ["string"]
              }
              currency = {
                type = ["string"]
              }
              customizations = {
                properties = {
                  bacon = {
                    type = ["boolean"]
                  }
                  cheese = {
                    type = ["string"]
                  }
                  lettuce = {
                    type = ["boolean"]
                  }
                  tomato = {
                    type = ["boolean"]
                  }
                }
                type = "object"
              }
              item_id = {
                type = ["string"]
              }
              item_name = {
                type = ["string"]
              }
              location_id = {
                type = ["string"]
              }
              location_name = {
                type = ["string"]
              }
              order_type = {
                type = ["string"]
              }
              platform = {
                type = ["string"]
              }
              price = {
                type = ["number"]
              }
              quantity = {
                type = ["integer"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Item Added"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              currency = {
                type = ["string"]
              }
              items = {
                items = {
                  properties = {
                    category = {
                      type = ["string"]
                    }
                    customizations = {
                      properties = {
                        bacon = {
                          type = ["boolean"]
                        }
                        cheese = {
                          type = ["string"]
                        }
                        cheese_sauce = {
                          type = ["boolean"]
                        }
                        lettuce = {
                          type = ["boolean"]
                        }
                        tomato = {
                          type = ["boolean"]
                        }
                      }
                      type = "object"
                    }
                    item_id = {
                      type = ["string"]
                    }
                    item_name = {
                      type = ["string"]
                    }
                    price = {
                      type = ["number"]
                    }
                    quantity = {
                      type = ["integer"]
                    }
                  }
                  type = "object"
                }
                type = "array"
              }
              location_id = {
                type = ["string"]
              }
              location_name = {
                type = ["string"]
              }
              order_id = {
                type = ["string"]
              }
              order_type = {
                type = ["string"]
              }
              platform = {
                type = ["string"]
              }
              timestamp = {
                type = ["string"]
              }
              total = {
                type = ["number"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Order Placed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Account Created"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context    = {}
          properties = {}
          traits = {
            properties = {
              LTV_score = {
                type = ["integer"]
              }
              email = {
                type = ["string"]
              }
              first_name = {
                type = ["string"]
              }
              last_name = {
                type = ["string"]
              }
              phone = {
                type = ["integer"]
              }
            }
            type = "object"
          }
        }
        type = "object"
      })
      key     = null
      type    = "IDENTIFY"
      version = 1
    },
  ]
  type = "LIVE"
}