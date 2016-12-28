-- Wise Blue
--   #0099e6 #00e6e6
-- Anarchy Red
--   #c6262e #f75348
-- Cool Gray
--   #6a6a6a #9a9a9a

-- High Contrast
--   #afafaf #F9F9F9


function conky_dark( )
  return "^fg(\\#F57F17)"
end

function conky_light( )
  return "^fg(\\#FFA000)"
end

function conky_jsdark( )
  return "\\#f57f17"
end

function conky_jslight( )
  return "\\#ffa000)"
end

function conky_pad( number )
  return string.format( '%3i' , conky_parse( number ) )
end

function conky_gettemp( )
  tmp = conky_parse("${exec cat /sys/class/hwmon/hwmon0/temp1_input | cut -c-2 }")

  if tmp == "" then
    tmp = conky_parse("${hwmon 1 temp 1}")
  end

  -- return string.format( '%3s' , tostring(tmp))
  return tmp
end

function conky_getbat( )
  bat = conky_parse("${battery_percent BAT1}")

  if bat == "0" then
    bat = conky_parse("${battery_percent BAT0}")
  end

  -- return string.format( '%3i' , bat )
  return bat
end

function conky_getbattime( )
  bat = conky_parse("${format_time ${battery_time BAT1} \"\\h:\\m\"}")

  if bat == "" then
    bat = conky_parse("${battery_time BAT0}")
  end

  return bat
end

function conky_spad( str )
  return string.format( '%10s' , conky_parse( str ) )
end

function conky_geteth( )
  return "enp9s0"
end

function conky_getwlan( )
  return "wlp8s0"
end
