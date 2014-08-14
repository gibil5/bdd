
#jr: 14 aug 2014


# Specs to learn how to program using BDD (Behavior Driven Development)
# From the book by David Chelimsky.

require 'spec_helper'


module Tester 


# Description of an Example Group 
	describe "Account" do                   					# Example group 

    
		account = Account.new() 


# Creation 
		context "Has just been created" do

			it "should have a balance of 0" do                	# Code example 
				#account.balance.should == Money.new(0, :USD)
				account.balance.should == 0
			end

		end


# Statement reporting 
		context "Reporting" do
			it "should have a correct statement" do
				#account.statement.should == ''
				# Looks for a pattern 
				account.statement.should =~ /Total Due: \$37\.42/m
				account.statement.should match (/Total Due: \$37\.42/)
      		end

    	end


# Errors 
    	context "Error raising" do
    		it "should raise an error if insufficient funds" do
    			
    			expect {
					account.withdraw 75
				}.to raise_error(InsufficientFundsError)

    		end
    	end
	end



# Test Error classes
	describe "Error classes" do


		context "Account Error" do

			error = AccountError.new() 
			
			it "should raise a proper error" do

    			#expect {
				#	account.withdraw 75
				#}.to raise_error(InsufficientFundsError)
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

end

