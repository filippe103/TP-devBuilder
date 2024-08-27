/**
 * @author filippe.nunes - @filippe103
 */
public class PromotionalProductBuilder {
    
    List<PromotionalProduct> promotionalProducts;

    public PromotionalProductBuilder() {
        this.promotionalProducts = new List<PromotionalProduct>();
    }

    public PromotionalProductBuilder withPromotionalProducts ( List<PromotionalProduct__c> promotionalProducts ) {

        for (PromotionalProduct__c promotionalProduct : promotionalProducts) {
            this.promotionalProducts.add( buildPromotionProduct(promotionalProduct) );
        }
        
        return this;
    }

    private PromotionalProduct buildPromotionProduct ( PromotionalProduct__c promotionalProduct ) {

        return new PromotionalProduct ( promotionalProduct );
    }

    public List<PromotionalProduct> build () {
        return this.promotionalProducts;
    }
}