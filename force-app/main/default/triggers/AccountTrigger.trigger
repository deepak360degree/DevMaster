/* this trigger on Account, when an account insert, automatically account billing   address should populate into the account shipping address. */
trigger AccountTrigger on Account (before insert) {

        if(Trigger.isBefore && Trigger.isbefore ){
            
                for(Account objAcc : trigger.new){
                    if(objAcc.billingCountry != null){
                        objAcc.ShippingCountry = objAcc.billingCountry;
                    }
                    if(objAcc.billingState != null){
                        objAcc.ShippingState = objAcc.billingState;
                    }
                    if(objAcc.billingCity != null){
                        objAcc.ShippingCity = objAcc.billingCity;
                    }
                }		
    
        }
    
}