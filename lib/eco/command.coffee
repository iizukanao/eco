fs  = "fs"
eco = require "eco"

exports.run = ->
  source = ""
  stdin  = process.openStdin()
  stdin.on "data", (buffer) ->
    source += buffer.toString() if buffer
  stdin.on "end", ->
    console.log eco.compile source
