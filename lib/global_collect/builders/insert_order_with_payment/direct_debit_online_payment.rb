# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::Builders::InsertOrderWithPayment
  class DirectDebitOnlinePayment < Payment
    def payment_fields
      super + %w[              
        CITY                   
        STATE                  
      ]
    end
  end
end
