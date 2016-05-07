-- Wise Blue
--   #0099e6 #00e6e6
-- Anarchy Red
--   #c6262e #f75348
-- Cool Gray
--   #6a6a6a #9a9a9a

function conky_dark( )
  return "^fg(\\#6a6a6a)"
end

function conky_light( )
  return "^fg(\\#9a9a9a)"
end

function conky_pad( number )
  return string.format( '%3i' , conky_parse( number ) )
end

function conky_getbat( )
  bat = conky_parse("${battery_percent BAT1}")
  
  if bat == "0" then
    bat = conky_parse("${battery_percent BAT0}")
  end
  
  return string.format( '%3i' , bat )
end

function conky_spad( str )
  return string.format( '%10s' , conky_parse( str ) )
end
