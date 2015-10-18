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
    "Well hello there, %. Welcome to steedos chat.",
    "Hey %, Hello! Welcome to steedos chat.",
    "Marnin', %. Welcome to steedos chat.",
    "Good 'aye!, %. Welcome to steedos chat.",
    "You can type: robot help, see what i can do for you.",
]

chinese_hellos = [
    "您好, %. 欢迎使用享聊.",
    "您好, %. 快去邀请您的朋友们一起使用享聊吧.",
    "您好, %. 享聊有手机客户端，记得要安装哦.",
    "您好, %. 我才上一年级，识字不多哦.",
    "您可以输入: robot help, 看看我能为你做什么.",
]

module.exports = (robot) ->
    robot.hear /hi/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(你好|您好|大家好|有人在吗)/i, (msg) ->
        hello = msg.random chinese_hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(robot|bot)/i, (msg) ->
        msg.send "You can type: robot help, see what i can do for you.",