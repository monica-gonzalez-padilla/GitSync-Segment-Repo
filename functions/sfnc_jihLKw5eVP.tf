import {
  to = segment_function.id-sfnc_jihLKw5eVP
  id = "sfnc_jihLKw5eVP"
}

resource "segment_function" "id-sfnc_jihLKw5eVP" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\nconst camelize = str => {\n\treturn str\n\t\t.replace(/(?:^\\w|[A-Z]|\\b\\w)/g, function (word, index) {\n\t\t\treturn index === 0 ? word.toLowerCase() : word.toUpperCase();\n\t\t})\n\t\t.replace(/\\s+/g, '');\n};\n\n/**\n * @func transformEvent\n * @arg {SegmentTrackEvent} event\n * @return {SegmentTrackEvent}\n */\nconst transformEvent = event => {\n\tconst eventName = event;\n\tlet newName = '';\n\n\t// Remover el verbo del objeto\n\tconst splittedParts = eventName.split('/');\n\tconst verbWithObject = splittedParts.pop();\n\tconst [verb, ...objectArr] = verbWithObject.split('_');\n\tconst object = camelize(objectArr.join(' '));\n\n\tsplittedParts.forEach(part => {\n\t\tconst newEventName = part.replace(/_/gi, ' ');\n\t\tnewName += camelize(newEventName) + '_';\n\t});\n\n\tif (object) {\n\t\tnewName += `$${verb}_$${object}`;\n\t} else {\n\t\tnewName += `$${verb}`;\n\t}\n\n\tif (newName.length > 3 && newName.replace(/[^_]/g, '').length >= 2) {\n\t\treturn newName;\n\t} else {\n\t\treturn eventName;\n\t}\n};\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\tconst renamedEvent = transformEvent(body.event);\n\n\tif (renamedEvent !== body.event) {\n\t\t// See https://segment.com/docs/connections/spec/track/\n\t\tSegment.track({\n\t\t\tevent: renamedEvent,\n\t\t\tuserId: body.userId,\n\t\t\tanonymousId: body.anonymousId,\n\t\t\tcontext: body.context,\n\t\t\t//integrations: body.integrations,\n\t\t\tproperties: body.properties,\n\t\t\ttimestamp: body.originalTimestamp\n\t\t});\n\t}\n}\n"
  description   = null
  display_name  = "Source Function SpinbyOxxo Example"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}