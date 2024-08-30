/**
 * @author filippe.nunes - @filippe103
 */
public class PaymentCallbackResponse {

    public String operationId;

    public PaymentCallbackResponse() {
    }
    
    public PaymentCallbackResponse(String operationId) {
        this();
        this.operationId = operationId;
    }

}