public class LeadManager {
    public static List<Lead> getLeadsByIds(Set<String> fieldApiNames, Set<Id> leadIds) {
        String fieldsString = fieldApiNames.toString().substringBetween('{','}');
        System.debug(fieldsString);
        String queryString = 'SELECT ' +fieldsString+ ' FROM Lead WHERE Id IN:' +leadIds;
        return Database.query(queryString);
    }
}