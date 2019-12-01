# takes a floating point number that represents an angle between 0 and 360 degrees and 
# returns a String that represents that angle in degrees, minutes and seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(float)
  degree = float.to_i
  minute = (float % 1 * MINUTES_PER_DEGREE).to_i
  second = ((float % 1 * MINUTES_PER_DEGREE) % 1 * SECONDS_PER_MINUTE).to_i

  if minute == 59 
    minute = 0 
    degree += 1
  end
  if second == 59
    second = 0 
    minute += 1
  end

  puts format(%(#{degree}#{DEGREE}%02d'%02d"), minute, second)
  # two_digits_minute = format('%02d', minute)
  # two_digits_second = format('%02d', second)
  # puts "%(#{degree}" + DEGREE + "#{two_digits_minute}\'" + "#{two_digits_second}\")"
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00")

## ls sol ##

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end
