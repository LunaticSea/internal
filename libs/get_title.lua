return function (client, track)
  if client.config.player.AVOID_SUSPEND then return (track and track.title) and track.title or 'Unknown' end
  return (track and track.title)
    and  string.format("[%s](%s)", track.title, track.uri)
    or "[Unknown](https://lunaticsea.github.io)"
end