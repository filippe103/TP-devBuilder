/**
 * @author filippe.nunes - @filippe103
 */
public class PricebookRepository {
    
    public Pricebook2 findByName( String name ) {

        return [SELECT Id
                       FROM Pricebook2
                       WHERE Name = :name
                       AND IsActive = true
                       LIMIT 1];
    }
}