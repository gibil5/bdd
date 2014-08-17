

#jr@oblique : 17 aug 2014


# Description: 	Specs to learn how to program using BDD (Behavior Driven Development)

# From: 		The Rspec Book by David Chelimsky et al.
#   			Ch. 13, Rspec 

# Goal (short term):  	To understand the development paradigm used by Michael Hartl seminal book on Ruby on Rails: 
#  						"The Ruby on Rails Tutorial" 

# Goal (long term):   	To work as a software engineer with interesting people like, 	
#   						- Martin Fulgueiras (Lima)
#   						- Pepe Ceballos (Mexico) 
#   						- ...



require 'spec_helper'


module Tester 


# Description of an Example Group 
	describe "Account" do                   					# Example group 

    
# Creation 
		account = Account.new() 


# Verify Balance
		context "Has just been created" do

			# Code Example 
			it "should have a balance of 0" do                	
				account.balance.should == 0
			end

		end


# Statement reporting 
		context "Reporting" do

			# Code Example 
			it "should have a correct statement" do
				# Looks for a pattern, using a regular expression  
				account.statement.should =~ /Total Due: \$37\.42/m
				account.statement.should match (/Total Due: \$37\.42/)
      		end

    	end


# Expecting Errors 
    	context "Raising Errors" do

    		# Code Example 
    		it "should raise an error if insufficient funds" do
    			
    			expect {
					account.withdraw 75
				}.to raise_error(InsufficientFundsError)

    		end
    	end
	end



# Test Error Expectation
	describe "Error classes" do


		context "Account Error" do

			error = AccountError.new() 
			
			it "should raise a proper error" do

    			expect {
				#	account.withdraw 75
					error.raiseAccountError()

				}.to raise_error(AccountError)
			end
		end

	end




# Test some matchers 

# Built-in matchers 
	describe "Built-in matchers" do

#jx: 13 aug 2014 
		account = Account.new() 


		it "should" do

			# should and equal matcher 
			(3*5).should == 15

			# should_not
			(3*5).should_not == 10    	
			
			# should w. floating-point calculation 
			#(5.255).should be_close(5.25, 0.005)

#jx: 13 aug 2014
			(5.255).should 	be_within(0.005).of(5.25)


			# should w. regular expressions 
			#account = Account.new() 
			account.statement.should match (/Total Due: \$37\.42/)
		end


		it "Expecting errors" do

    		expect {
				account.withdraw 75
			}.to raise_error(InsufficientFundsError)

		end  

	end


# Predicate matchers 
	describe "Predicate matcher" do

		context "" do

			it "Testing empty arrays" do
				arr = [] 
				#arr.empty?.should == true	# Also valid 
				arr.should be_empty  
			end

			it "Test request_parameters" do

				request_parameters = RequestParameters.new 

				request_parameters.has_key?(:a).should == true		# valid  

				request_parameters.should have_key(:a)				# valid 

			end


		end		
	
	end

end



