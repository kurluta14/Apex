public class WrappersForLead {
    public class InnerWrapper {
        public String fieldValue;
        public String fieldApiName;
    }
    
    public class OuterWrapper {
        public String leadId;
        public String convertedAccountId;
        public List<InnerWrapper> fieldMapping;
    }
}