/**
 * @author filippe.nunes - @filippe103
 */
public class CreateOpportunityCallbackFactory {
    
    List<BaseCreateOpportunityCallback> strategies;

    public CreateOpportunityCallbackFactory(){
        this.strategies = new List<BaseCreateOpportunityCallback> {
            new CreateAccountOpportunityCallback(),
            new ConvertLeadOpportunityCallback(),
            new HasAccountOpportunityCallback()
        };
    }
    
    public BaseCreateOpportunityCallback getStrategy( List<List<SObject>> payers ){

        for( BaseCreateOpportunityCallback strategy : strategies ){

            if( strategy.accept( payers )){
                return strategy;
            }
        }

        return null;
    }
}