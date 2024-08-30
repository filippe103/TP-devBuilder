/**
 * @author filippe.nunes - @filippe103
 */
public class PaymentCallbackInboundService {

    PayerSearcher searcher;

    CreateOpportunityCallbackFactory factory;
  
    public PaymentCallbackInboundService() {
        this.searcher = new PayerSearcher();
        this.factory = new CreateOpportunityCallbackFactory();
    }

    public PaymentCallbackResponse processPayment ( PaymentCallbackInbound callbackInbound ) {

        List<List<SObject>> payers = searcher.search( callbackInbound?.payer?.document );
        
        BaseCreateOpportunityCallback callbackService = this.factory.getStrategy( payers );

        Opportunity opportunity = callbackService.createOpportunity( callbackInbound );
        
        return new PaymentCallbackResponse( opportunity.Id );
    }
    
}