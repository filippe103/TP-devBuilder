/**
 * @author filippe.nunes - @filippe103
 */
public class SurveyQuestionLinearScale extends SurveyQuestion {
    
    public List<SurveyLinearScale> scales;
    
    public SurveyQuestionLinearScale() {
        super( SurveyQuestionType.LINEAR_SCALE );
        this.scales = new List<SurveyLinearScale>();
    }
}