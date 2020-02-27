require_relative 'bankaccount'
require_relative 'statement'
require 'time'
    
    class Transaction

      attr_reader :transactions_history
    
      #def initialize(transactions_history)
       # @transactions_history = transactions_history
        #@transactions = []
      #end

      def initialize
        @transactions_history = []
      end
    
    end
