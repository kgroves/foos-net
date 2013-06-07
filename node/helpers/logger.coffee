define [
  'winston'
  'winston-mongodb'

], (winston, winstonMongodb) ->
  init: () ->
    mongoDB = winstonMongodb.MongoDB
    winston.add winston.transports.File, filename:'foos-net.log', maxsize:1073741824, maxFiles:5
    winston.add mongoDB, db:'test'
    winston.remove winston.transports.Console
