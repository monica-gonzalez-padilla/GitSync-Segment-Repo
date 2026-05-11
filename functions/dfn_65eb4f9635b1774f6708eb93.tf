import {
  to = segment_function.id-dfn_65eb4f9635b1774f6708eb93
  id = "dfn_65eb4f9635b1774f6708eb93"
}

resource "segment_function" "id-dfn_65eb4f9635b1774f6708eb93" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\n\nasync function onTrack(event, settings) {\n\tconst endpoint = 'https://webhook.site/d822db3a-1733-4cdf-a907-c833c74abd52'; // replace with your endpoint\n\tlet response;\n\tlet profileResponse;\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify({ tipoEvent: typeof event, ...event })\n\t\t});\n\n\t\t// if (response.status >= 500 || response.status === 429) {\n\t\t// \t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\t// \tthrow new RetryError(`Failed with $${response.status}`);\n\t\t// }\n\n\t\tif (event.context.traits.email && event.event === 'Audience Entered') {\n\t\t\tconst email = event.context.traits.email;\n\t\t\tconst profilesUrl = `https://profiles.segment.com/v1/spaces/$${settings.segmentSpaceId}/collections/users/profiles/email:$${email}/traits?limit=100`;\n\t\t\tconsole.log(profilesUrl);\n\t\t\ttry {\n\t\t\t\tprofileResponse = await fetch(profilesUrl, {\n\t\t\t\t\tmethod: 'GET',\n\t\t\t\t\theaders: {\n\t\t\t\t\t\tAuthorization: `Basic $${settings.apiEncodedToken}`,\n\t\t\t\t\t\t'Content-Type': 'application/json'\n\t\t\t\t\t}\n\t\t\t\t});\n\n\t\t\t\tconst result = await profileResponse.json();\n\t\t\t\tconsole.log(result.traits);\n\t\t\t\tconst { nombre, apellido, phone } = result.traits;\n\n\t\t\t\tconst urlencoded = new URLSearchParams();\n\t\t\t\turlencoded.append('contentSid', settings.contentSid);\n\t\t\t\turlencoded.append('template', settings.template);\n\t\t\t\turlencoded.append(\n\t\t\t\t\t'customer',\n\t\t\t\t\tJSON.stringify({\n\t\t\t\t\t\tphone: `+521$${phone}`,\n\t\t\t\t\t\tnameClient: `$${nombre} $${apellido}`,\n\t\t\t\t\t\tsfId: email,\n\t\t\t\t\t\tmonto: '0',\n\t\t\t\t\t\tdonorId: ''\n\t\t\t\t\t})\n\t\t\t\t);\n\n\t\t\t\turlencoded.append(\n\t\t\t\t\t'twilioNumber',\n\t\t\t\t\t`whatsapp:+521$${settings.twilioNumber}`\n\t\t\t\t);\n\t\t\t\tconsole.log('urlencoded', urlencoded);\n\n\t\t\t\tconst requestOptions = {\n\t\t\t\t\tmethod: 'POST',\n\t\t\t\t\theaders: {\n\t\t\t\t\t\tAccept: 'application/x-www-form-urlencoded',\n\t\t\t\t\t\tAuthorization: `Basic $${settings.authorization}`,\n\t\t\t\t\t\t'Content-Type': 'application/x-www-form-urlencoded'\n\t\t\t\t\t},\n\t\t\t\t\tbody: urlencoded,\n\t\t\t\t\tredirect: 'follow'\n\t\t\t\t};\n\t\t\t\tconsole.log(requestOptions);\n\n\t\t\t\tconst twilioResponse = await fetch(settings.twilioUrl, requestOptions);\n\t\t\t\tconst twilioResult = await twilioResponse.text();\n\t\t\t\tconsole.log(twilioResult);\n\t\t\t} catch (error) {\n\t\t\t\t// Retry on connection error\n\t\t\t\tthrow new RetryError(error.message);\n\t\t\t}\n\t\t}\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/2e87e186-3bca-4d55-b93b-97705deb2a73.svg"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "apiEncodedToken"
      name        = "apiEncodedToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "segmentSpaceId"
      name        = "segmentSpaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}