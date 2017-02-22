#gem install mongo
require 'rubygems'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::DEBUG

def comparify(db, qID_1, qID_2)
  
  puts "Running comparify..."
  
  questionnaires = db["questionnaires"]
  
  questions1 = questionnaires.find({"id" => qID_1})
  questions2 = questionnaires.find({"id" => qID_2})
  
  if questions1.count == questions2.count

    puts "They have same length"
    
  else
    
    puts "They do not have same length"
      
  end
  
end

begin
    
    db = Mongo::Client.new([ 'localhost' ], :database => 'bm_development')
    
    # db[:questionnaires].find.each { |doc| puts doc }
    
    comparify(db, 1, 2)
    
    rescue Mongo::Error::NoServerAvailable => e
    
        p "Cannot connect to the server"
        p e
        
end

#collection = db[:answer]