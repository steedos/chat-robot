# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
hellos = [
    "Well hello there, %. Welcome to Steedos Chat.",
    "Hey %, Hello! Welcome to Steedos Chat.",
    "Marnin', %. Welcome to Steedos Chat.",
    "Good day, %. Welcome to Steedos Chat.",
    "Good 'aye!, %. Welcome to Steedos Chat."
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %"
]
module.exports = (robot) ->
    robot.hear /hi/, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(hello|good( [d'])?ay(e)?)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name
