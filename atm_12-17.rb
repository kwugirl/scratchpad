class Account
  def initialize(name)
    @name = name
    @current_balance = 0
  end

  def login
    prompt_user_for_actions
    answer = gets.chomp
    while answer != "cancel"
      case answer
      when "balance"
        puts "Your #{@name} balance is #{@current_balance}."
      when "deposit"
        puts "Enter the amount to deposit"
        deposit = gets.chomp.to_i
        @current_balance += deposit
        puts "your balance is now #{@current_balance}."
      when "withdraw"
        puts "Enter the amount to withdraw"
        withdraw = gets.chomp.to_i
        if withdraw > @current_balance
          puts "Insufficient funds"
        else
          @current_balance -= withdraw
          puts "Your balance is now #{@current_balance}."
        end
      when "cancel"
        puts "Transaction canceled"
      end
      prompt_user_for_actions
      answer = gets.chomp
    end
  end

  def prompt_user_for_actions
    puts <<~PROMPTS
      Welcome
      What would you like to do?
      Type balance to check your balance
      Type deposit to deposit money
      Type withdraw to withdraw money
      Type cancel to cancel the transaction
    PROMPTS
  end
end
acct = Account.new("Family Account")
acct.login
