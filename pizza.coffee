# Description:
#   Displays a random pizza gif from animatedpizzagifs.com
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   HUBOT_TUMBLR_API_KEY - A Tumblr OAuth Consumer Key will work fine
#   HUBOT_MORE_PIZZA - Show pizza whenever anyone mentions it (default: false)
#
# Commands:
#   hubot pizza party- Show a pizza gif
#
# Author:
#   Eric Z Goodnight based on iangreenleaf

tumblr = require 'tumblrbot'
PIZZA = "pizzagifs.tumblr.com"

module.exports = (robot) ->
  robot.respond /pizza party/i, (msg) ->
    tumblr.photos(PIZZA).random (post) ->
      msg.send post.photos[0].original_size.url
