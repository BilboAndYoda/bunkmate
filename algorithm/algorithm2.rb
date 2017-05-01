#gem install mongo
require 'rubygems'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::DEBUG

def comparify(db, qID_1, qID_2)
  
  puts "Running comparify..."
  
  questionnaires = db["questionnaires"]
  questions = db["questions"]
  
  questions1 = questionnaires.find({"id" => qID_1})
  questions2 = questionnaires.find({"id" => qID_2})
  
  if questions1.count == questions2.count

    puts "They have same length..."
    value = 0
    
    questions1.each do |document|
      
      id1 = document["questionID"]
      
      questions2.each do |document2|
      
        id2 = document2["questionID"]
        
        if id1 == id2
          
          responseType = 0
          relation = 0
          
          questions.find({"id" => id1}).each do |question|
            
            #print "Q: ", question
            
            if id1 == question["id"]
              responseType = question["responseType"]
              relation = question["relation"] 
            end
            
          end
          
          response1 = document["response"]
          response2 = document2["response"]
          
          #print "ResponseType: ", responseType
          #puts
          #print "Relation: ", relation
          #puts
        
          if responseType == 0 or responseType == 3 # Multiple Choice or True/False
            
            if response1 == response2
              value = value + 1
            end
          
          else if responseType == 1 # Put-in-order
          
            order1 = response1.split(/\s*,\s*/)
            order2 = response2.split(/\s*,\s*/)
            numResponses = order1.count
            
            index1 = 0
            order1.each { |item1|
            
              index2 = order2.index(item1)  
              
              #print "idx: ", index1, "-", index2, "\n"
              
              tent = (1 - ((index1 - index2).abs / numResponses.to_f))
              if tent < 1
                tent = tent - (1.0 / numResponses)
              end
              
              #print "Calc: ", tent, "\n"
              value = value + (tent / numResponses)
              
              index1 = index1 + 1
              
            }
          
          else if responseType == 2 # scale (-0.5 to 0.5)
            
            value = value + (response1 + response2).abs
            
          end
          
          if relation == 1
            value = 1 - value
          end 
          
          end
        
          end

        end
      
      end
      
    end
          
    print "Comparification: ", value, " / ", questions1.count, " = ", value.to_f / questions1.count, "\n"
    
  else
    
    puts "They do not have same length"
      
  end
  
end

begin
    
    db = Mongo::Client.new([ 'localhost' ], :database => 'bm_development')
    
    #db[:students].find.each { |doc| puts doc }
    #db[:questions].find.each { |doc| puts doc }
    db[:questionnaires].find.each { |doc| puts doc }
    
=begin
    comparify(db, 1, 2)
    comparify(db, 2, 3)
    comparify(db, 3, 4)
    comparify(db, 4, 5)
    comparify(db, 5, 6)
    comparify(db, 6, 7)
    comparify(db, 7, 8)
    comparify(db, 9, 10)
    comparify(db, 12, 13)
    comparify(db, 13, 14)
    comparify(db, 12, 14)
=end    
    
    rescue Mongo::Error::NoServerAvailable => e
    
        p "Cannot connect to the server"
        p e
        
end

#collection = db[:answer]