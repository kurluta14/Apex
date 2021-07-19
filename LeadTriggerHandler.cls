public class LeadTriggerHandler {
    public static void updateLead(List<Lead> leads) {
        WrappersForLead.OuterWrapper ow = new WrappersForLead.OuterWrapper();
        WrappersForLead.InnerWrapper iw = new WrappersForLead.InnerWrapper();
        WrappersForLead.InnerWrapper iw2 = new WrappersForLead.InnerWrapper();
        iw.fieldValue = leads[0].Phone;
        iw.fieldApiName = 'Phone';
        iw2.fieldValue = leads[0].Description;
        iw2.fieldApiName = 'Description';
        ow.leadId = leads[0].Id;
    	ow.convertedAccountId = leads[0].ConvertedAccountId;
        ow.fieldMapping = new List<WrappersForLead.InnerWrapper> {iw, iw2};
            //System.debug(ow);
        String serOw = JSON.serialize(ow);
        	//System.debug(serOw);
        LeadPlatformEvent__e lpe = new LeadPlatformEvent__e(
       	 	RawData__c = serOw);
        Database.SaveResult sr = EventBus.publish(lpe);
		if (sr.isSuccess()) {
    	System.debug('Successfully published event.');
			} else {
   				 for(Database.Error err : sr.getErrors()) {
                     System.debug('Error returned: ' +
                     err.getStatusCode() +
                     ' - ' +
                     err.getMessage());
   		 }
	}
}
    

}