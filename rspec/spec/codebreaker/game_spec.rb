
require 'spec_helper'


module Codebreaker

  describe "Game" do		                # Creates an ExampleGroup (a Test case)

# Context 
      # let is useful when
      #   only creating instance variables and assigning them values 
      let(:output)  { double('output').as_null_object }
      let(:game)    { Game.new(output) }



# Behavior 

    describe "#start" do                # Id. 
      # it Creates an example. An instance of an ExampleGroup


      it "sends a welcome message" do		
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end


      it "prompts for the first guess" do   
        output.should_receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end



    describe "#guess" do
      it "sends the mark to output" do
        game.start('1234')
        output.should_receive(:puts).with('++++')
        game.guess('1234')
      end
    end


  end
end
