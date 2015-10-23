cronJob = require('cron').CronJob
to_json = require('xmljson').to_json
request = require 'request'
module.exports = (robot) ->
  new cronJob '00 30 09,12,15,18 * * 1-5', () =>
    url = "http://b.hatena.ne.jp/hotentry/it.rss"
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}
    request options, (error, response, body) ->
      to_json body, (err, data) =>
        article = "はてブITカテゴリ ホットエントリ¥n"
        for id, item of data["rdf:RDF"].item
          title = item.title
          link  = item.link
          article += "#{title} #{link}¥n"
        robot.send {room:"ROOM_ID"}, article
  , null, true, "Asia/Tokyo"
