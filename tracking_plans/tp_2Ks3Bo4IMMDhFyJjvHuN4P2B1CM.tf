import {
  to = segment_tracking_plan.id-tp_2Ks3Bo4IMMDhFyJjvHuN4P2B1CM
  id = "tp_2Ks3Bo4IMMDhFyJjvHuN4P2B1CM"
}

resource "segment_tracking_plan" "id-tp_2Ks3Bo4IMMDhFyJjvHuN4P2B1CM" {
  description = "description"
  name        = "HTTP Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "Blocks all events where the referrer URL includes known internet bots."
        not = {
          properties = {
            context = {
              properties = {
                referrer = {
                  properties = {
                    url = {
                      pattern = "(?i)(googlebot|bingbot|baidu|yandex|duckduckbot|slurp|semrush|ahrefs|mj12bot|screaming[\\s_-]?frog|crawler|bot|spider)"
                      type    = "string"
                    }
                  }
                  required = ["url"]
                  type     = "object"
                }
              }
              required = ["referrer"]
              type     = "object"
            }
          }
          required = ["context"]
          type     = "object"
        }
        properties = {
          context    = {}
          properties = {}
          traits     = {}
        }
        type = "object"
      })
      key     = null
      type    = "COMMON"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "sobre este evento"
        properties = {
          context = {}
          properties = {
            properties = {
              "nueva propiedad" = {
                description = "sobre esta propiedad"
                id          = "/properties/properties/properties/nueva%20propiedad"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Nuevo evento"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "this description"
        properties = {
          context = {}
          properties = {
            properties = {
              email = {
                id      = "/properties/properties/properties/email"
                pattern = "a, b, c"
                type    = ["string"]
              }
              event_name = {
                description = "descrtipotiuon and the options are: a,b,c"
                id          = "/properties/properties/properties/event_name"
                pattern     = ""
                type        = ["string"]
              }
              event_prop = {
                id   = "/properties/properties/properties/event_prop"
                type = ["string"]
              }
              other_property = {
                description = ""
                id          = "/properties/properties/properties/other_property"
                type        = "string"
              }
              other_property1 = {
                id   = "/properties/properties/properties/other_property1"
                type = "object"
              }
              other_property2 = {
                id      = "/properties/properties/properties/other_property2"
                pattern = ""
                type    = "string"
              }
            }
            required = ["other_property1"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Cart Viewed"
      type    = "TRACK"
      version = 2
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {
            properties = {
              userAgent = {
                id = "/properties/context/properties/userAgent"
                not = {
                  anyOf = [{
                    pattern = "Googlebot"
                    type    = "string"
                    }, {
                    pattern = "Mozillabot"
                    type    = "string"
                    }, {
                    pattern = "Mediapartners"
                    type    = "string"
                    }, {
                    pattern = "AdsBot"
                    type    = "string"
                    }, {
                    pattern = "Bingbot"
                    type    = "string"
                  }]
                }
              }
            }
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
      key     = "Page Viewed"
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
              category = {
                description = ""
                id          = "/properties/properties/properties/category"
                type        = "string"
              }
              products = {
                description = ""
                id          = "/properties/properties/properties/products"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Product Viewed"
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
              channel_type = {
                description = ""
                id          = "/properties/properties/properties/channel_type"
                type        = "string"
              }
              contact_id = {
                description = ""
                id          = "/properties/properties/properties/contact_id"
                type        = "string"
              }
              email = {
                description = ""
                id          = "/properties/properties/properties/email"
                type        = "string"
              }
              last_URL_visited = {
                description = ""
                id          = "/properties/properties/properties/last_URL_visited"
                type        = "string"
              }
              lead_id = {
                description = ""
                id          = "/properties/properties/properties/lead_id"
                type        = "string"
              }
              lead_numeric_id = {
                description = ""
                id          = "/properties/properties/properties/lead_numeric_id"
                type        = "string"
              }
              loan_application_id = {
                description = ""
                id          = "/properties/properties/properties/loan_application_id"
                type        = "string"
              }
              phone = {
                description = ""
                id          = "/properties/properties/properties/phone"
                type        = "string"
              }
              primary_source = {
                description = ""
                id          = "/properties/properties/properties/primary_source"
                type        = "string"
              }
              progress_step = {
                description = ""
                id          = "/properties/properties/properties/progress_step"
                type        = "string"
              }
              status = {
                description = ""
                id          = "/properties/properties/properties/status"
                type        = "string"
              }
              sub_id = {
                description = ""
                id          = "/properties/properties/properties/sub_id"
                type        = "string"
              }
              user_id = {
                description = ""
                id          = "/properties/properties/properties/user_id"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Lead Created"
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
              email = {
                description = ""
                id          = "/properties/properties/properties/email"
                type        = "string"
              }
              form_name = {
                description = ""
                id          = "/properties/properties/properties/form_name"
                type        = "string"
              }
              other_property1 = {
                description = ""
                id          = "/properties/properties/properties/other_property1"
                type        = "string"
              }
              other_property2 = {
                description = ""
                id          = "/properties/properties/properties/other_property2"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Form Submitted"
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
              email = {
                description = ""
                id          = "/properties/properties/properties/email"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Testing Protocols"
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
              email = {
                id   = "/properties/properties/properties/email"
                type = ["string"]
              }
              event_name = {
                id      = "/properties/properties/properties/event_name"
                pattern = ""
                type    = ["string"]
              }
              event_prop = {
                id   = "/properties/properties/properties/event_prop"
                type = ["string"]
              }
              other_property1 = {
                id   = "/properties/properties/properties/other_property1"
                type = "object"
              }
              other_property2 = {
                id      = "/properties/properties/properties/other_property2"
                pattern = ""
                type    = "string"
              }
            }
            required = ["other_property1"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Cart Viewed"
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
              items = {
                description = ""
                id          = "/properties/properties/properties/items"
                items = {
                  description   = ""
                  id            = "/properties/properties/properties/items/items"
                  isNewProperty = true
                  properties = {
                    index = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/index"
                      type        = "string"
                    }
                  }
                  required = []
                  type     = "object"
                }
                type = "array"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Product Clicked"
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
              items = {
                description = ""
                id          = "/properties/properties/properties/items"
                items = {
                  description = ""
                  id          = "/properties/properties/properties/items/items"
                  properties = {
                    index = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/index"
                      properties  = {}
                      type        = "integer"
                    }
                    productUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/productUUID"
                      properties  = {}
                      type        = "string"
                    }
                    skuUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/skuUUID"
                      properties  = {}
                      type        = "string"
                    }
                  }
                  type = "object"
                }
                properties = {}
                type       = "array"
              }
              screenName = {
                description = ""
                id          = "/properties/properties/properties/screenName"
                properties  = {}
                type        = "string"
              }
              swooshName = {
                description = ""
                id          = "/properties/properties/properties/swooshName"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Product Carousel Viewed"
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
              new_property = {
                description = ""
                id          = "/properties/properties/properties/new_property"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "new event"
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
            properties = {
              acount_status = {
                description = ""
                id          = "/properties/traits/properties/acount_status"
                type        = "any"
              }
              "feature_flags.RCM" = {
                description = ""
                id          = "/properties/traits/properties/feature_flags.RCM"
                type        = "any"
              }
            }
            type = "object"
          }
        }
        type = "object"
      })
      key     = null
      type    = "GROUP"
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
            properties = {
              cell_phone = {
                description = ""
                id          = "/properties/traits/properties/cell_phone"
                type        = "number"
              }
              city = {
                description = ""
                id          = "/properties/traits/properties/city"
                type        = "string"
              }
              contact_id = {
                description = ""
                id          = "/properties/traits/properties/contact_id"
                type        = "number"
              }
              current_address = {
                description = ""
                id          = "/properties/traits/properties/current_address"
                type        = "array"
              }
              email = {
                description = ""
                id          = "/properties/traits/properties/email"
                type        = "string"
              }
              first_name = {
                description = ""
                id          = "/properties/traits/properties/first_name"
                type        = "string"
              }
              home_phone = {
                description = ""
                id          = "/properties/traits/properties/home_phone"
                type        = "number"
              }
              last_name = {
                description = ""
                id          = "/properties/traits/properties/last_name"
                type        = "string"
              }
              middle_initial = {
                description = ""
                id          = "/properties/traits/properties/middle_initial"
                type        = "string"
              }
              state = {
                description = ""
                id          = "/properties/traits/properties/state"
                type        = "string"
              }
              street_address = {
                description = ""
                id          = "/properties/traits/properties/street_address"
                type        = "string"
              }
              suffix = {
                description = ""
                id          = "/properties/traits/properties/suffix"
                type        = "string"
              }
              user_id = {
                description = ""
                id          = "/properties/traits/properties/user_id"
                type        = "string"
              }
              work_phone = {
                description = ""
                id          = "/properties/traits/properties/work_phone"
                type        = "number"
              }
              zipcode = {
                description = ""
                id          = "/properties/traits/properties/zipcode"
                type        = "number"
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
      key     = "Checkout Started"
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
      key     = "Checkout Step Completed"
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
      key     = "Checkout Step Viewed"
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
      key     = "New event"
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
      key     = "Product Added"
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
      key     = "Product Removed"
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
      key     = "Test Event"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}