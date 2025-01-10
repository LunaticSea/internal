return function (duration)
  local seconds = math.floor((duration / 1000) % 60)
  local minutes = math.floor((duration / (1000 * 60)) % 60)
  local hours = math.floor((duration / (1000 * 60 * 60)) % 24)

  -- Pad with leading zeros if needed
  local s_seconds = string.format("%02d", seconds)
  local s_minutes = string.format("%02d", minutes)
  local s_hours = string.format("%02d", hours)

  if duration < 3600000 then
    return s_minutes .. ":" .. s_seconds
  else
    return s_hours .. ":" .. s_minutes .. ":" .. s_seconds
  end
end