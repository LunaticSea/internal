local convert_time = require("convert_time")

return function (duration)
  if not duration then return '00:00' end
  if duration > 3600000000 then return 'Live!' end
  return convert_time(duration)
end