#Design a class BankAccount with attributes account_number, balance, and methods to transfer money to another account. 
#Implement methods to add accounts, deposit money, withdraw money, and check balances.
require 'colorize'

class BankAccount
	attr_accessor :account_number, :balance
	def initialize(account_number, balance=5000)
		@account_number = account_number
		@balance = balance
	end

	def transfer(another_account,amount)
		@balance -= amount
		another_account.balance += amount	
		puts "Transferred #{amount} to #{another_account.account_number}.".light_blue
	end

	def deposit(amount)
		@balance += amount
		puts "Deposited RM#{amount}.".light_magenta
		check_balance
	end

	def withdraw(amount)
		@balance -= amount
		puts "Withdrew RM#{amount}.".light_red
		check_balance
	end

	def check_balance
		puts "Balance: RM#{@balance}.".light_green
	end
end

bankaccount1 = BankAccount.new("11006906")
puts bankaccount1.account_number
bankaccount1.check_balance
bankaccount1.deposit(250)
bankaccount1.withdraw(888)

puts " "

bankaccount2 = BankAccount.new("12008756")
puts bankaccount2.account_number
bankaccount2.check_balance
bankaccount2.deposit(555)

puts " "

bankaccount1.transfer(bankaccount2,200)
puts bankaccount1.check_balance
puts bankaccount2.check_balance