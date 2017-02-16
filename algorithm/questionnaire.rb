#Questionnaire class to represent a questionnaire filled out by a student

class Questionnaire
    
    def initialize(questionnaireID = 0, questionList = [], responseList = [])
        @m_questionnaireID = questionnaireID
        @m_questionList    = questionList
        @m_responseList    = responseList
    end
    
    def toString
        puts "Questionnaire ID: %d" % @m_questionnaireID
        puts "Number of questions: %d" % @m_questionList.size
        puts "Number of responses: %d" % @m_responseList.size
        _idx = 1
        for q in @m_questionList
            _idx += 1
            puts "Question %d: ID: %s" % idx, q
        end
        _idx = 1
        for r in @m_responseList
            _idx += 1
            puts "Question %d: Response: %s" % idx, r
        end
    end
end

#test = Questionnaire. new
#test.toString()