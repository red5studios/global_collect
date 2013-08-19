# -*- encoding : utf-8 -*-
require File.join File.dirname(__FILE__), '../direct_debit_online_payment'

module GlobalCollect::RequestModels::InsertOrderWithPayment
  class HostedDirectDebitOnlinePaymentAT < DirectDebitOnlinePayment
    def initialize(attributes)
      super(attributes)
      @attributes["HOSTEDINDICATOR"] = "1"
    end
    
    def suggested_response_mixins
      super + [GlobalCollect::Responses::InsertOrderWithPayment::HostedMerchantLinkPaymentResponseMethods]
    end
    
    def fields
      super.merge({
        "ACCOUNTNUMBER"           => ['AN10',   'R'],
        "ACCOUNTNAME"             => ['AN30',   'R'],
        "DIRECTDEBITTEXT"         => ['AN28',   'R']
      })
    end
  end
end
