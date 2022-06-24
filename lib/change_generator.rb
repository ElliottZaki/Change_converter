class Change_generator

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

  def convert_to_float(number)
    float_number = number.to_f
    puts float_number
  end

  def convert(number)
    conversion_list = []
    # number = number.to_f
      divisable_by_20?(number, conversion_list)
    print conversion_list
    return conversion_list
  end 

private

  def divisable_by_20?(number, conversion_list)
    remainder = number / 2000
    number = number % 2000
    conversion_list.fill("£20", conversion_list.size, remainder) 
    divisable_by_10?(number, conversion_list)
  end

  def divisable_by_10?(number, conversion_list)
    remainder = number / 1000
    number = number % 1000
    conversion_list.fill("£10", conversion_list.size, remainder) 
    divisable_by_5?(number, conversion_list)
  end

  def divisable_by_5?(number, conversion_list)
    remainder = number / 500
    number = number % 500
    conversion_list.fill("£5", conversion_list.size, remainder)
    divisable_by_2?(number, conversion_list) 
  end

  def divisable_by_2?(number, conversion_list)
    remainder = number / 200
    number = number % 200
    conversion_list.fill("£2", conversion_list.size, remainder)
    divisable_by_1?(number, conversion_list) 
  end

  def divisable_by_1?(number, conversion_list)
    remainder = number / 100
    number = number % 100
    conversion_list.fill("£1", conversion_list.size, remainder) 
    divisable_by_0_5?(number, conversion_list)
  end

  def divisable_by_0_5?(number, conversion_list)
    remainder = number / 50
    number = number % 50
    conversion_list.fill("50p", conversion_list.size, remainder)
    divisable_by_0_2?(number, conversion_list) 
  end

  def divisable_by_0_2?(number, conversion_list)
    remainder = number / 20
    number = number % 20
    conversion_list.fill("20p", conversion_list.size, remainder)
    divisable_by_0_1?(number, conversion_list)  
  end

  def divisable_by_0_1?(number, conversion_list)
    remainder = number / 10
    number = number % 10
    conversion_list.fill("10p", conversion_list.size, remainder)
    divisable_by_0_05?(number, conversion_list)  
  end

  def divisable_by_0_05?(number, conversion_list)
    remainder = number / 5
    number = number % 5
    conversion_list.fill("5p", conversion_list.size, remainder)
    divisable_by_0_02?(number, conversion_list)  
  end

  def divisable_by_0_02?(number, conversion_list)
    remainder = number / 2
    number = number % 2
    conversion_list.fill("2p", conversion_list.size, remainder)
    divisable_by_0_01?(number, conversion_list)  
  end

  def divisable_by_0_01?(number, conversion_list)
    remainder = number / 1
    number = number % 1
    conversion_list.fill("1p", conversion_list.size, remainder) 
  end
end

