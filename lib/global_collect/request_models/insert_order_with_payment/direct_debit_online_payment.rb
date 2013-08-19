# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::RequestModels::InsertOrderWithPayment
  class DirectDebitOnlinePayment < Payment
    def suggested_response_mixins
      [
        GlobalCollect::Responses::SuccessRow,
        GlobalCollect::Responses::InsertOrderWithPayment::DirectDebitOnlinePaymentResponseMethods
      ]
    end
    # WDL §5.28.1 TABLE 106 specifies the full list of possible fields
    def fields
      super.merge({
      })
    end
  end
end
