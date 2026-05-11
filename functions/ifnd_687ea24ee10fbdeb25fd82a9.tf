import {
  to = segment_function.id-ifnd_687ea24ee10fbdeb25fd82a9
  id = "ifnd_687ea24ee10fbdeb25fd82a9"
}

resource "segment_function" "id-ifnd_687ea24ee10fbdeb25fd82a9" {
  code          = "// token: ZR-j4AftVRLBmOM01J1HP8T4HwmjDiiZdoj2n1_hN0p4KBV7r4M0GMltrI5gayaRatgz0jYkyyjfIcBkQZzIqvqesk7f16Oix8qBVmVkZw5yiuvbcL3AsLkQaPgCSkJ2VgBWbeDFzEAj_fBBPd_ro0PLrBXRmL5EA4lMh8fIEj9mcpBVQgyLtXCwoqKSljbTu9icJw1d7RGzH0taP2d3Ifjv3pQI9-lqkHIIVdt_C4KxGyfvgAi_Mbb81QGdaEyOvkIWDvn5UpVg8kVlv4y4bI7WkV4=\n// spaceId: spa_moWTxQRn1NWcs1YTu8N7ia\n\nasync function onTrack(event, settings) {\n\tconst endpointProfile = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles/user_id:$${event.userId}/traits?include=most_recent_gclid`;\n\n\tlet lastGclid = '';\n\ttry {\n\t\tconst response = await fetch(endpointProfile, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(settings.profileToken + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t});\n\n\t\tconst data = await response.json();\n\t\tdata1 = data;\n\t\tconsole.log('data: ', data);\n\t\tif (data.traits?.most_recent_gclid) {\n\t\t\tlastGclid = String(data.traits.most_recent_gclid).replace(/\\s+/g, '');\n\t\t} else {\n\t\t\tconsole.log('No \"most_recent_gclid\" trait found for user.');\n\t\t}\n\t} catch (error) {\n\t\tthrow new RetryError(`Failed to fetch Profile API data: $${data}`);\n\t}\n\n\tconst transformedEvent = {\n\t\t...event,\n\t\tproperties: {\n\t\t\t...event.properties,\n\t\t\tmost_recent_gclid: lastGclid\n\t\t}\n\t};\n\t// Use raw object logging\n\tconsole.log(transformedEvent);\n\n\treturn transformedEvent;\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = ""
      label       = "profileToken"
      name        = "profileToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "spaceId"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}