# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::RequestModels::DoRefund
  class MoneybookersPayment < Payment
    # WDL §5.16.1 specifies the full list of possible fields
    def fields
      super.merge({
        "PAYMENTPRODUCTID" => ["N5",  "R"]
      })
    end
  end
end
