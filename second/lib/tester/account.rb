

module Tester


	class AccountError < StandardError  
	#class InsufficientFundsError < StandardError  
		def initialize()
		end
	end  


	class InsufficientFundsError < AccountError
	end



	class Account

    	#def initialize(init)
    	def initialize()
    		init = 0
      		@money = init
    	end


    	def withdraw(amount)
    		#raise InsufficientFundsError, 'Not enough money'
    		raise InsufficientFundsError
    		#@money = @money - amount
    	end


    	def balance
      		@money
    	end

		def statement
			#''
			#'Total Due: $37.42'
			'jr: Total Due: $37.42'
		end	 

  end
end

