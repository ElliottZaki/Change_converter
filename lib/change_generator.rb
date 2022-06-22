class Change_generator

  attr_reader :number


# currency_demoninations = ["£20", "£10", "£5", "£2", "£1", "50p", "20p", "10p", "5p", "2p", "1p"]

CURRENCY_VALUE = Hash.new
["£20"].each {|denominiation| CURRENCY_VALUE[denominiation] = 20}
["£10"].each {|denominiation| CURRENCY_VALUE[denominiation] = 10}
["£5"].each {|denominiation| CURRENCY_VALUE[denominiation] = 5}
["£2"].each {|denominiation| CURRENCY_VALUE[denominiation] = 2}
["£1"].each {|denominiation| CURRENCY_VALUE[denominiation] = 1}
["50p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.50}
["20p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.20}
["10p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.10}
["5p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.05}
["2p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.02}
["1p"].each {|denominiation| CURRENCY_VALUE[denominiation] = 0.01}

number = 50

  # def convert(number)
  #   convert_to_float(number)
  # end

  def convert_to_float(number)
    float_number = number.to_f
    puts float_number
  end

  def convert(number)
    conversion_list = []
      divisable_by_20?(number, conversion_list)
    print conversion_list
    return conversion_list
  end 

private

  def divisable_by_20?(number, conversion_list)
    remainder = number / 20 
    number = number % 20
    conversion_list.fill("£20", conversion_list.size, remainder) 
    divisable_by_10?(number, conversion_list)
  end

  def divisable_by_10?(number, conversion_list)
    remainder = number / 10
    number = number % 10
    conversion_list.fill("£10", conversion_list.size, remainder) 
    divisable_by_5?(number, conversion_list)
  end

  def divisable_by_5?(number, conversion_list)
    remainder = number / 5
    number = number % 5
    conversion_list.fill("£5", conversion_list.size, remainder) 
  end
end

