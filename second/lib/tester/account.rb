

#jr@oblique : 17 aug 2014

# Description:  Classes documented by the account specs 


module Tester



# Request parameters

    class RequestParameters

        def initialize

            @hash = {   :a => "a", 
                        :b => "b", 
                        :c => "c" 
                    }
        end

        def has_key?(id)
            #true 
            @hash.has_key?(id)
        end 

    end


# Error classes 
    class AccountError < StandardError  

        def initialize()
        end

        def raiseAccountError()
            raise AccountError
        end

    end  

	class InsufficientFundsError < AccountError
	end


# Business classes 
	class Account

    	def initialize()
    		init = 0
      		@money = init
    	end


    	def withdraw(amount)
    		#raise InsufficientFundsError, 'Not enough money'
    		raise InsufficientFundsError
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

