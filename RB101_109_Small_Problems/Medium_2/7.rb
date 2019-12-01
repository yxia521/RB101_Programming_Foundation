# Unlucky Days
# Write a method that returns the number of Friday the 13ths in the year 
# given by an argument. You may assume that the year is greater than 1752 
# (when the United Kingdom adopted the modern Gregorian Calendar) and that 
# it will remain in use for the foreseeable future

# which month's 13th is Friday

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    t = Time.local(year, month, 13)
    count += 1 if t.friday? 
  end
  p count
end

# --- ls sol ---

# we must require the Date class, since that class isn't part of the core library.
require 'date' 

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
