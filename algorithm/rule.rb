#Rule class to represent a rule on some level of the housing level such as:
#This building is a female only building
#Entire floor must house only males
#This room is to be ignored in matching (RA room)
#etc.

class Rule
    
    def initialize(rule_ID = 0, ruleType = 0, restrictionType = 0, parameter1 = 0, parameter2 = 0, parameter3 = 0)
        @m_rule_ID         = rule_ID
        @m_ruleType        = ruleType
        @m_restrictionType = restrictionType
        @m_parameter1      = parameter1
        @m_parameter2      = parameter2
        @m_parameter3      = parameter3
    end
        
    def toString
        print "rule test"
    end
end

#test = Rule. new
#test.toString()