local discordia = require('discordia')

local function playerRowOne(client, disable, edited)
  return discordia.Components( {
    {
      id = "stop",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.stop,
      disabled = disable
    },
    {
      id = "replay",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.previous,
      disabled = disable
    },
    {
      id = "pause",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER[edited and "play" or "pause"],
      disabled = disable
    },
    {
      id = "skip",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.skip,
      disabled = disable
    },
    {
      id = "loop",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.loop,
      disabled = disable
    },
  })
end

local function playerRowTwo(client, disable)
  return discordia.Components( {
    {
      id = "shuffle",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.shuffle,
      disabled = disable
    },
    {
      id = "voldown",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.voldown,
      disabled = disable
    },
    {
      id = "clear",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.delete,
      disabled = disable
    },
    {
      id = "volup",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.volup,
      disabled = disable
    },
    {
      id = "queue",
      type = 2,
      style = 2,
      emoji = client.config.emojis.PLAYER.queue,
      disabled = disable
    },
  })
end

local function filterSelect(client, disable)
  return discordia.Components({
    discordia.SelectMenu({
      id = "filter",
      placeholder = 'Choose a filter for better audio experience',
      options = client.selectMenuOptions,
      disabled = disable
    })
  })
end

return {
  playerRowOne = playerRowOne,
  playerRowTwo = playerRowTwo,
  filterSelect = filterSelect
}