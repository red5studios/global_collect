# -*- encoding : utf-8 -*-
require File.join File.dirname(__FILE__), '../direct_debit_online_payment'

module GlobalCollect::RequestModels::InsertOrderWithPayment
  class HostedDirectDebitOnlinePaymentES < DirectDebitOnlinePayment
    def initialize(attributes)
      super(attributes)
      @attributes["HOSTEDINDICATOR"] = "1"
    end
    
    def suggested_response_mixins
      super + [GlobalCollect::Responses::InsertOrderWithPayment::HostedMerchantLinkPaymentResponseMethods]
    end
    
    def fields
      super.merge({
        "BANKCODE"                => ['N4',     'R'],
        "ACCOUNTNUMBER"           => ['AN10',   'R'],
        "ACCOUNTNAME"             => ['AN30',   'R'],
        "DIRECTDEBITTEXT"         => ['AN40',   'R'],
        "BRANCHCODE"              => ['N5',     'R'],
        "BANKCHECKDIGIT"          => ['AN2',    'R']
      })
    end
  end
end
