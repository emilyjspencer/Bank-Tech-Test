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
        #@transactions = []
      end

      def make_transaction(transaction_type)
        if transaction_type == @deposit
         @transactions_history.push(@deposit)
        else transaction_type == @withdrawal
          @transactions_history.push(@withdrawal)
        end
      end
    
    end
