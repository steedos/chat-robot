hellos = [
    "Well hello there, @% . Welcome to steedos chat. You can type robot help, see what i can do for you.",
    "Hey @% , Hello! Welcome to steedos chat. You can type robot help, see what i can do for you.",
    "Good 'aye!, @% . Welcome to steedos chat. You can type robot help, see what i can do for you."
]

module.exports = (robot) ->
  robot.enter (res) ->
    hello = res.random hellos
    res.send hello.replace "%", res.message.user.name