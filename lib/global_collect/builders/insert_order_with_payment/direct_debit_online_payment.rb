# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::Builders::InsertOrderWithPayment
  class DirectDebitOnlinePayment < Payment
    # WDL §5.28 Table 106 specifies credit card payment fields
  end
end
