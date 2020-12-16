class AtmTransaction
  def self.valid_pin?(pin)
    numeric_pin = pin.to_i
    if numeric_pin < 9999 && numeric_pin > 0
      true
    else
      false
    end
  end
end

ask_for_input = "Enter 'cancel' to exit or enter in a new input to test if it's a pin:"
puts ask_for_input
input = gets.chomp

while input != "cancel"
  if AtmTransaction.valid_pin?(input)
    puts "Thanks for entering a valid pin!"
  else
    puts "You entered #{input}, but that is not a valid pin."
  end
  puts ask_for_input
  input = gets.chomp
end
