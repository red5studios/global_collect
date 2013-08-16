# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::RequestModels::InsertOrderWithPayment
  class HostedDirectDebitOnlinePayment < Payment
    def initialize(attributes)
      super(attributes)
      @attributes["HOSTEDINDICATOR"] = "1"
    end

    def suggested_response_mixins
      super + [GlobalCollect::Responses::InsertOrderWithPayment::HostedMerchantLinkPaymentResponseMethods]
    end

    def fields
      super.merge({
        "DIRECTDEBITTEXT"         => ['AN50', 'R'],
        "SURNAME"                 => ['AN35', 'R'],
        "STREET"                  => ['AN50', 'R'],        
        "CITY"                    => ['AN10', 'R'],
        "STATE"                   => ['AN40', 'R'],
        "EXPIRYDATE"              => ['N4',   'R'],
        "CREDITCARDNUMBER"        => ['N19',  'R'],
        "ISSUENUMBER"             => ['N2',   'O'],
        "CVV"                     => ['N4',   'O'],
        "CVVINDICATOR"            => ['N1',   'O'],
        "AVSINDICATOR"            => ['N1',   'O'],
        "AUTHENTICATIONINDICATOR" => ['N1',   'O'],
        "STTINDICATOR"            => ['N1',   'O'],
        "FIRSTNAME"               => ['AN15', 'O'],
        "PREFIXSURNAME"           => ['AN15', 'O'],
        "SURNAME"                 => ['AN35', 'O'],
        "STREET"                  => ['AN50', 'O'],
        "HOUSENUMBER"             => ['AN15', 'O'],
        "CUSTOMERIPADDRESS"       => ['AN32', 'O'],
        "ADDITIONALADDRESSINFO"   => ['AN50', 'O'],
        "ZIP"                     => ['AN10', 'O'],
        "CITY"                    => ['AN40', 'O'],
        "STATE"                   => ['AN35', 'O'],
        "PHONENUMBER"             => ['AN20', 'O'],
        "EMAIL"                   => ['AN70', 'O'],
        "BIRTHDATE"               => ['N8',   'O'],
        "DCCINDICATOR"            => ['N1',   'O'],
        "ISSUERAMOUNT"            => ['N12',  'O'],
        "ISSUERCURRENCYCODE"      => ['AN3',  'O'],
        "MARGINRATEPERCENTAGE"    => ['N6 ',  'O'],
        "EXCHANGERATESOURCENAME"  => ['AN32', 'O'],
        "EXCHANGERATE"            => ['N12',  'O'],
        "EXCHANGERATEVALIDTO"     => ['N14',  'O'],
        "MAC"                     => ['AN64', 'O']
      })
    end
  end
end
