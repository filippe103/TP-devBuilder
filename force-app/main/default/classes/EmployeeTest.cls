/**
 * @author filippe.nunes - @filippe103
 */
@isTest
public class EmployeeTest {
    
    
    @isTest
    static void shouldCreateManagerAndAdvisor(){
        
        final Decimal DEFAULT_MANAGER_SALARY = 15000;
        final Decimal DEFAULT_ADVISOR_SALARY = 7000;

        Manager manager = new Manager(new List<Advisor>());
        manager.code = '12321';
        manager.name = 'Bisso Manager';
        manager.documentId = '14324312341214';
        manager.salary = DEFAULT_MANAGER_SALARY;
        manager.advisors = new List<Advisor>();

        Assert.areEqual(45000, manager.getBonus());

        Assert.areEqual(DEFAULT_MANAGER_SALARY, manager.salary);
        Assert.isTrue(manager.advisors.isEmpty());
        
        Advisor advisor = new Advisor(new List<Account>());
        advisor.code = '12321';
        advisor.name = 'Bisso Advisor';
        advisor.documentId = '14324312341214';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
        advisor.accounts = new List<Account>();
        
        Assert.areEqual(19000, advisor.getBonus());

        Assert.areEqual(DEFAULT_ADVISOR_SALARY, advisor.salary);
        Assert.isTrue(advisor.accounts.isEmpty());
    }
   
    @isTest
    static void shouldApplyBonusToAnalyst(){
        
        final Decimal DEFAULT_ANALYST_SALARY = 1000;

        Analyst analyst = new Analyst();
        analyst.code = '5534';
        analyst.salary = DEFAULT_ANALYST_SALARY;

        Assert.areEqual(8750, analyst.getBonus());
    }

    @isTest
    static void shouldApplyBonusToDirector(){
        
        final Decimal DEFAULT_DIRECTOR_SALARY = 20000;

        Director director = new Director();
        director.code = '5534';
        director.salary = DEFAULT_DIRECTOR_SALARY;

        Assert.areEqual(100000, director.getBonus());
    }

    @isTest
    static void shouldApplyBonusToVicePresidentLatam(){
        
        final Decimal DEFAULT_VICEPRESIDENTLATAM_SALARY = 25000;

        VicePresidentLatam vicePresident = new VicePresidentLatam();
        vicePresident.code = '5534';
        vicePresident.salary = DEFAULT_VICEPRESIDENTLATAM_SALARY;

        Assert.areEqual(250000, vicePresident.getBonus());
    }

    @isTest
    static void shouldSortEmployeeByName(){

        List<Employee> employees = new List<Employee> {
            new Advisor('Bissolino'),
            new Manager('Teste'),
            new VicePresidentLatam('João'),
            new Analyst('José'),
            new Director('Andre') 
        };

        System.debug(JSON.serialize(employees));

        employees.sort();

        System.debug(JSON.serialize(employees));

        Assert.areEqual('Andre', employees.get(0).name);
        Assert.areEqual('Bissolino', employees.get(1).name);
        Assert.areEqual('José', employees.get(2).name);
        Assert.areEqual('João', employees.get(3).name);
        Assert.areEqual('Teste', employees.get(4).name);
    }

    @isTest
    static void shouldValidateEmployees(){

        Analyst analyst = new Analyst();
        analyst.code = '5534';
        analyst.salary = 1000;

        Advisor advisor = new Advisor();
        advisor.code = '5534';
        advisor.salary = 1000;
        
        Manager manager = new Manager();
        manager.code = '5534';
        manager.salary = 1000;

        List<Validable> validables = new List<Validable> {
            analyst, 
            advisor, 
            manager
        };

        for(Validable validable : validables){
            Assert.isTrue(validable.isValid());
        }
    }
}