# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::Builders::DoRefund
  class MoneybookersPayment < Payment
    # WDL §5.16.1 defines the refund payment fields
    def payment_fields
      super + %w[
        PAYMENTPRODUCTID
      ]
    end
  end
end
