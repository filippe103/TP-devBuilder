/**
 * @author filippe.nunes - @filippe103
 */
public class SurveyQuestionCode extends SurveyQuestion {

    public String code;
    
    public SurveyQuestionCode() {
        super( SurveyQuestionType.CODE_TEXT );
    }

    public SurveyQuestionCode withCode( String Code ){
        this.code = code;
        return this;
    }
}