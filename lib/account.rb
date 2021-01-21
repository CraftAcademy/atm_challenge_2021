require 'date'
require 'pry'
# pin_code, :balance, :account_status, :exp_date, :owner
class Account
    attr_accessor :pin_code
    def initialize
       @pin_code = rand(1000..9999)
    end
    





end

