/**
 * @author filippe.nunes - @filippe103
 */
@isTest
public class PromotionServiceTest {
    
    @isTest
    public static void shouldReturnOldPromotion () {

        Map<String, Object> records = PromotionalProductFixtureFactory.createIntegratedScenarioWithMultiplePromotions();

        Product2 product = (Product2) records.get('product');

        PromotionalProduct__c expected = (PromotionalProduct__c) records.get('promotionalProduct');

        PromotionService service = new PromotionService();

        Test.startTest();
        
            List<PromotionalProduct> promotionalProducts = service.findPromotionalProducts( new List<String>{ product.Id } );

        Test.stopTest();

        Assert.isFalse(promotionalProducts.isEmpty());

        Assert.areEqual(expected.Id, promotionalProducts.get(0).promotionalProductId);
    }
}