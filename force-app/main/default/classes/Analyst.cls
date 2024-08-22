/**
 * @author filippe.nunes - @filippe103
 */
public class Analyst extends Employee {
    
    public Analyst() {
    }

    public Analyst(String name) {
        super(name);
    }

    override
    public Decimal getBonus(){
        return (this.salary * 1.75) + 7000;
    }
}