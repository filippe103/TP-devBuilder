/**
 * @author filippe.nunes - @filippe103
 */
public class VicePresidentLatam extends Employee {

    public VicePresidentLatam() { 
    }

    public VicePresidentLatam(String name){
        super(name);
    }

    override
    public Decimal getBonus(){
        return this.salary * 10;
    }

}