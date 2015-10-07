module.exports = (robot) ->
  robot.hear /何でも|なんでも/, (msg) ->
    replies = ["ん？", "今何でもするって言ったよね?"]
    reply = msg.random replies
    msg.send reply
