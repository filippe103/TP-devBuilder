/**
 * @ filippe.nunes - filippe103
 */
@isTest
public class SObjectTest {
    
    @isTest
    public static void shouldAddError(){

        Account account = new Account(Name = 'Teste');
        account.addError('Informe o número do CNPJ');

        Assert.isTrue(account.hasErrors()); 

        Opportunity opportunity = new Opportunity(Name = 'Teste');
        opportunity.addError('Informe o número do CNPJ');

        Assert.isTrue(opportunity.hasErrors());
    }
}