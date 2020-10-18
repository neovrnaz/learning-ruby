def get_day_name(day)
  day_name = ''

  # A case expression should only be used in one kind
  # of situation: When you're comparing a value
  # (in this case "day" ) against a bunch of different
  # values (in this case "mon".."sun").

  case day
  when 'mon'
    day_name = 'monday'
  when 'tue'
    day_name == 'tuesday'
  when 'wed'
  day_name = 'wednesday'
  when 'thu'
  day_name = 'thursday'
  when 'fri'
  day_name = 'friday'
  when 'sat'
  day_name = 'saturday'
  when 'sun'
  day_name = 'sunday'
  else
    day_name = 'invalid input'
  end
  day_name
end

puts get_day_name('mon')
