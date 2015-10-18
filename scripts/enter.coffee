hellos = [
    "Well hello there, %. Welcome to steedos chat.",
    "Hey %, Hello! Welcome to steedos chat.",
    "Good 'aye!, %. Welcome to steedos chat."
    "您好, %. 欢迎使用享聊.",
    "您好, %. 快去邀请您的朋友们一起使用享聊吧.",
    "您好, %. 享聊有手机客户端，记得要安装哦.",
]

module.exports = (robot) ->
  robot.enter (res) ->
    hello = res.random hellos
    res.send hello.replace "%", res.message.user.name