/**
 * @author filippe.nunes - @filippe103
 */
public class BonusCalculator {
    
    Decimal total;
    
    public BonusCalculator() {
        this.total = 0;
    }

    public void calculateBonus(Employee employee){
        this.total += employee.getBonus();
    }

    public Decimal getTotal(){
        return this.total;
    }
}