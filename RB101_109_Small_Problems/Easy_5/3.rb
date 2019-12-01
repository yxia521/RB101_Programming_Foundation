# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(":").map(&:to_i)
  if hours == HOURS_PER_DAY
    minutes = 0
  else
    minutes = hours * MINUTES_PER_HOUR + minutes
  end
end

def before_midnight(time)
  minutes = MINUTES_PER_DAY - after_midnight(time)
  minutes = 0 if minutes == MINUTES_PER_DAY
  minutes
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
