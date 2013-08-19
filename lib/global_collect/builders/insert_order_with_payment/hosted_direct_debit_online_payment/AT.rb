# -*- encoding : utf-8 -*-
require File.join File.dirname(__FILE__), '../direct_debit_online_payment'

module GlobalCollect::Builders::InsertOrderWithPayment
  class HostedDirectDebitOnlinePaymentAT < DirectDebitOnlinePayment
  end
end
