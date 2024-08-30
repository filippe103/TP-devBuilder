/**
 * @author filippe.nunes - @filippe103
 */
public class PayerSearcher {
    
    public List<List<SObject>> search( String payerDocument ){

        return [FIND :payerDocument
                    IN ALL FIELDS
                RETURNING Account(Id), Lead(Id)];
    }
}