# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), 'payment')

module GlobalCollect::Builders::InsertOrderWithPayment
  class HostedDirectDebitOnlinePayment < Payment
    def payment_fields
      super + %w[
        DIRECTDEBITTEXT
        EXPIRYDATE             
        CREDITCARDNUMBER       
        ISSUENUMBER            
        CVV                    
        CVVINDICATOR           
        AVSINDICATOR           
        AUTHENTICATIONINDICATOR
        STTINDICATOR           
        FIRSTNAME              
        PREFIXSURNAME          
        SURNAME                
        STREET                 
        HOUSENUMBER            
        CUSTOMERIPADDRESS      
        ADDITIONALADDRESSINFO  
        ZIP                    
        CITY                   
        STATE                  
        PHONENUMBER            
        EMAIL                  
        BIRTHDATE              
        DCCINDICATOR           
        ISSUERAMOUNT           
        ISSUERCURRENCYCODE     
        MARGINRATEPERCENTAGE   
        EXCHANGERATESOURCENAME 
        EXCHANGERATE           
        EXCHANGERATEVALIDTO    
        MAC                    
      ]
    end
  end
end
