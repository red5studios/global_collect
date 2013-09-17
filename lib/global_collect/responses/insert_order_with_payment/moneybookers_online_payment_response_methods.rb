# -*- encoding : utf-8 -*-
module GlobalCollect::Responses::InsertOrderWithPayment
  # WDL §5.28.2 TABLE 115 specifies the possible return keys
  module MoneybookersOnlinePaymentResponseMethods
    [
      "PAYMENT REFERENCE"    ,
      "ADDITIONAL REFERENCE" ,
      "EXTERNAL REFERENCE"   ,
      "ORDER ID"             ,
      "STATUS ID"            ,
      "EFFORT ID"            ,
      "MERCHANT ID"          ,
      "ATTEMPT ID"           ,
      "STATUS DATE"          ,
      "AVS RESULT"           ,
      "CVV RESULT"           ,
      "FRAUD RESULT"         ,
      "FRAUD CODE"           ,
      "FRAUD NEURAL"         ,
      "FRAUD RCF"            ,
      "AUTHORISATION CODE"   ,
      "FORM METHOD"          ,
      "FORM ACTION"          ,
      "REF"                  ,
      "MAC"                  ,
      "RETURN MAC"      
    ].each do |meth|
      define_method meth.downcase.gsub(/\s+/, "_") do
        row[meth.gsub(/\s+/, "")]
      end
    end
    
    def payment_status
      GlobalCollect::Const::PaymentStatus.from_code(status_id)
    end
  end
end
