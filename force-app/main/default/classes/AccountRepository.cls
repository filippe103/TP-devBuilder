/**
 * @author filippe.nunes - @filippe103
 */
public class AccountRepository {
    
    public Account save( Account account) {
        upsert account;
        return account;
    }
}