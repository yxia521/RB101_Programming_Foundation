# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

def time_of_day(minute)
  format = { hour: { up: 00, down: 24 }, minute: 00 }
  case 
  # positive, count up from 00:00
  when minute >= 0 && minute < 60
    format[:minute] = minute
  
  "#{sprintf('%02d', format[:hour][:up])}:#{sprintf('%02d', format[:minute])}"
  when minute >= 60

    if (minute / 60) > 24
      format[:hour][:up] = (minute / 60) % 24
      format[:minute] = minute % 60
    else 
      format[:hour][:up] = (minute / 60)  
      format[:minute] = (minute % 60)
    end

  "#{sprintf('%02d', format[:hour][:up])}:#{sprintf('%02d', format[:minute])}"
  # negative, count down from 24:00
  when minute < 0 

    if minute.abs < 60 
      format[:hour][:down] = 24 - 1
      format[:minute] = 60 - minute.abs
    elsif (minute.abs / 60) < 24
      format[:hour][:down] = 23 - minute.abs / 60
      format[:minute] = 60 - minute.abs % 60
    else
      format[:hour][:down] = 23 - ((minute.abs / 60) % 24)
      format[:minute] = 60 - minute.abs % 60
    end

  "#{sprintf('%02d', format[:hour][:down])}:#{sprintf('%02d', format[:minute])}"
  end
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800) 
p time_of_day(-4231)

# thoughts: can refactor
# for example, define a constant that represents all 60s, 24s

################## LS solution ##################

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
