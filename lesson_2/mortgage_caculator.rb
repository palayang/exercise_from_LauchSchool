
def prompt(input)
  puts "=> #{input}"
end

def integer?(input)
  /^\d+$/.match(input)
end

loop do
  prompt "please input the loan amount:"
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if integer?(loan_amount)
      prompt "you loan aomint is not valid, please input the loan amount:"
    else
      break
    end
  end

  prompt "please input APR:"
  apr = ''
  loop do
    apr = gets.chomp
    if integer?(apr)
      prompt "your APR in not valid, please input APR:"
    else
      break
    end
  end

  prompt "please input the loan duration in year:"
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if loan_duration.to_f < 0
      prompt "your loan duration is not valud, please input the loan duration:"
    else
      break
    end
  end

  monthly_interest = apr.to_f / 100 / 12
  loan_duration_in_months = loan_duration.to_i * 12
  monthly_payment = loan_amount.to_f * (monthly_interest * (1 + monthly_interest) \
    ** loan_duration_in_months) / ((1 + monthly_interest)**\
    loan_duration_in_months - 1)
  prompt "your monthly payment is #{monthly_payment}"
  prompt "do you want caculate another mortgage? y)yes"
  continue = gets.chomp
  break unless continue == 'y'
end
