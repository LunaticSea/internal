local reply_interaction = require('class')('ReplyInteraction')
local discordia = require('discordia')
local setTimeout = require('timer').setTimeout

function reply_interaction:__init(client, inteaction, content)
  self._client = client
  self._inteaction = inteaction
  self._content = content
  self:execute()
end

function reply_interaction:execute()
  local embed = {
    description = self._content,
    color = discordia.Color.fromHex(self._client.config.bot.EMBED_COLOR).value,
  }

  local msg = self._inteaction:reply({ embeds = { embed } })

  local setup = self._client.db.setup:get(self._inteaction.guild.id)

  local timeout = self._client.config.utilities.DELETE_MSG_TIMEOUT

  setTimeout(timeout, coroutine.wrap(function ()
    if (not setup or setup.channel ~= self._inteaction.channel.id) and msg then
      self._inteaction:deleteReply()
    end
  end))
end

return reply_interaction