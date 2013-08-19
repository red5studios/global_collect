# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), '../hosted_direct_debit_online_payment')

module GlobalCollect::Builders::InsertOrderWithPayment
  class HostedDirectDebitOnlinePaymentNL < HostedDirectDebitOnlinePayment
    def payment_fields
      super + %w[
        DIRECTDEBITTEXT
        ACCOUNTNUMBER
        ACCOUNTNAME
        TRANSACTIONTYPE
      ]
    end
  end
end
