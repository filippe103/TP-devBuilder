/**
 * @author filippe.nunes - @filippe103
 */
public class Advisor extends Employee {
    
    public List<Account> accounts;

    public Advisor() {
        System.debug('Inicializei o Advisor com construtor padrao');
    }

    public Advisor(String name) {
        super(name);
    }

    public Advisor(List<Account> accounts) {
        this(); 
        this.accounts = accounts;
        System.debug('Inicializei o Advisor com construtor accounts'); 
    }

    override
    public Decimal getBonus(){
        return (this.salary * 2) + 5000;
    }

    //    public Advisor() {
    //    super('958695063');
    //    System.debug('Inicializei o Advisor'); 
    //    }
}