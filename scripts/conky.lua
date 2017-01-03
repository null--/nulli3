-- Colors
dark = "#FFA000"
light = "#F57F17"

-- CHANE change ethernet interface name
-- -- Ethernet Interface Name
eth = "eth0" -- etn1s0
-- -- WiFi Interface Name
wlan = "wlp2s0" -- wlan0
-- -- Other interfaces
tun = "tun0"
ppp = "ppp0"

function conky_dark( )
  return string.format("^fg(\\%s)", dark)
end

function conky_light( )
  return string.format("^fg(\\%s)", light)
end

function conky_jsdark( )
  return string.format("\\%s", dark)
end

function conky_jslight( )
  return string.format("\\%s", light)
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
  cstr = string.format("${if_existing /proc/net/route %s}${addr %s}${else}X${endif}" , eth, eth)
  return conky_parse(cstr)
end

function conky_getwlan( )
  cstr = string.format("${if_existing /proc/net/route %s}${addr %s}${else}X${endif}" , wlan, wlan)
  return conky_parse(cstr)
end

function conky_gettun( )
  cstr = string.format("${if_existing /proc/net/route %s}${addr %s}${else}down${endif}" , tun, tun)
  return conky_parse(cstr)
end

function conky_getppp( )
  cstr = string.format("${if_existing /proc/net/route %s}${addr %s}${else}down${endif}" , ppp, ppp)
  return conky_parse(cstr)
end

function conky_getethspd( )
  cstr = string.format("${if_existing /proc/net/route %s}${downspeed %s}:D.U:${upspeed %s}${else}X${endif}" , eth, eth, eth)
  return conky_parse(cstr)
end

function conky_getwlanspd( )
  cstr = string.format("${if_existing /proc/net/route %s}${downspeed %s}:D.U:${upspeed %s}${else}X${endif}" , wlan, wlan, wlan)
  return conky_parse(cstr)
end
