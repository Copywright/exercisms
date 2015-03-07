def basic_set(number)
  if number <= 3
    "I" * number
  elsif (5..8).include? number
    "V" + "I" * (number - 5)
  else
    number == 4 ? "IV" : "IX"
  end
end

def second_set(number)
  case number
    when 1 then 'X'
    when 2 then 'XX'
    when 3 then 'XXX'
    when 4 then 'XL'
    when 5 then 'L'
    when 6 then 'LX'
    when 7 then 'LXX'
    when 8 then 'LXXX'
    when 9 then 'XC'
  end
end


class Fixnum
  def to_roman
    basic_set(self) if self.to_s.length == 1
  end
end
