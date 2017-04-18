#gem install mongo
require 'rubygems'
require 'mongo'

Mongo::Logger.logger.level = ::Logger::DEBUG

begin
    
    #db = Mongo::Connection.new.db("testDB") # OR
    #db = Mongo::Connection.new("localhost").db("mydb") # OR
    db = Mongo::Client.new([ 'localhost' ], :database => 'bm_development')
    #db = Mongo::Connection.new("localhost", 27017).db("testDB")
    
    db.database_names.each { |name| puts name }
    
#    doc = { :_id => 9, :name => "Toyota", :price => 37600 } 
=begin
    result = db[:students].insert_many([
    { :_id => BSON::ObjectId.new, :firstName => 'Chris', :middleInit => 'R', :lastName => 'Hansen', :id => 1, :gender => 'Male', :questionaireID => 1, :matchID => 0, :email => 'crh@bm.com'},
    { :_id => BSON::ObjectId.new, :firstName => 'Sarah', :middleInit => 'G', :lastName => 'Bazingo', :id => 2, :gender => 'Female', :questionaireID => 2, :matchID => 0, :email => 'sgb@bm.com'},
    { :_id => BSON::ObjectId.new, :firstName => 'Madison', :middleInit => 'W', :lastName => 'Case', :id => 3, :gender => 'Female', :questionaireID => 3, :matchID => 0, :email => 'mwc@bm.com'},
    { :_id => BSON::ObjectId.new, :firstName => 'Girlie', :middleInit => 'A', :lastName => 'Haynes', :id => 4, :gender => 'Female', :questionaireID => 4, :matchID => 0, :email => 'gah@bm.com'},
    { :_id => BSON::ObjectId.new, :firstName => 'Bob', :middleInit => 'E', :lastName => 'Trump', :id => 5, :gender => 'Male', :questionaireID => 5, :matchID => 0, :email => 'bet@bm.com'},
    { :_id => BSON::ObjectId.new, :firstName => 'Francis', :middleInit => 'R', :lastName => 'Will', :id => 6, :gender => 'Male', :questionaireID => 6, :matchID => 0, :email => 'frw@bm.com'}
    ])

    puts "#{result.inserted_count} documents were inserted"
=end
    
=begin
    coll = db["questions"]
    coll.delete_one({:id => 0})
    coll.delete_one({:id => 1})
    coll.delete_one({:id => 2})
      
    db[:questions].insert_one({prompt: "Answer this question?", id: 1, responseType: 0, responses: "Sure thing,Nope,Who dat,Boing boing", relation: 0})
    db[:questions].insert_one({prompt: "Answer another question?", id: 2, responseType: 0, responses: "Okay I guess,Where has the rum gone?", relation: 0})
    db[:questions].insert_one({prompt: "Answer one last question?", id: 3, responseType: 0, responses: "GET AWAY FROM ME!, I WANT THIS NIGHTMARE TO BE OVER! WHO ARE YOU?", relation: 1})
    db[:questions].insert_one({prompt: "Who you be SCALE?", id: 4, responseType: 2, responses: "Less,More", relation: 0})
    db[:questions].insert_one({prompt: "PUT DIS SHTUFF IN ORDER?", id: 5, responseType: 1, responses: "Drugs,Alcohol,Popsicles,Poopoo", relation: 0})
=end
    
=begin
    db[:questionnaires].insert_one({id: 1, questionID: 1, response: 0,})
    db[:questionnaires].insert_one({id: 1, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 1, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 2, questionID: 1, response: 1,})
    db[:questionnaires].insert_one({id: 2, questionID: 2, response: 2,})
    db[:questionnaires].insert_one({id: 2, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 3, questionID: 1, response: 2,})
    db[:questionnaires].insert_one({id: 3, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 3, questionID: 3, response: 0,})
    
    db[:questionnaires].insert_one({id: 4, questionID: 1, response: 0,})
    db[:questionnaires].insert_one({id: 4, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 4, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 5, questionID: 1, response: 1,})
    db[:questionnaires].insert_one({id: 5, questionID: 2, response: 2,})
    db[:questionnaires].insert_one({id: 5, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 6, questionID: 1, response: 2,})
    db[:questionnaires].insert_one({id: 6, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 6, questionID: 3, response: 0,})
    
    db[:questionnaires].insert_one({id: 7, questionID: 1, response: 2,})
    db[:questionnaires].insert_one({id: 7, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 7, questionID: 3, response: 1,})
    db[:questionnaires].insert_one({id: 8, questionID: 1, response: 2,})
    db[:questionnaires].insert_one({id: 8, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 8, questionID: 3, response: 1,})
    
    db[:questionnaires].insert_one({id: 9, questionID: 4, response: 0.5,})
    db[:questionnaires].insert_one({id: 10, questionID: 4, response: -0.5,})
    db[:questionnaires].insert_one({id: 11, questionID: 4, response: -0.25,})
    
    db[:questionnaires].insert_one({id: 12, questionID: 5, response: "1,2,3,4",})
    db[:questionnaires].insert_one({id: 13, questionID: 5, response: "4,3,2,1",})
    db[:questionnaires].insert_one({id: 14, questionID: 5, response: "1,2,3,4",})
=end

=begin
    db[:questions].find.each { |doc| puts doc }
    db[:questionnaires].find.each { |doc| puts doc }
=end


    
    #db[:students].find.each { |doc| puts doc }
    db[:questionnaires].find.each { |doc| puts doc }
    
    #coll = db["questions"]
    #db[:questions].find.each { |doc| puts doc }
    #db[:questionnaires].find.each { |doc| puts doc }
    #db[:questions].find({"id"=>3})
    #coll.delete_one("id" => 4)
    
    
    
    rescue Mongo::Error::NoServerAvailable => e
    
        p "Cannot connect to the server"
        p e
    
end

#collection = db[:answer]

=begin
    db[:questionnaires].insert_one({id: 1, questionID: 1, response: 0,})
    db[:questionnaires].insert_one({id: 1, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 1, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 2, questionID: 1, response: 1,})
    db[:questionnaires].insert_one({id: 2, questionID: 2, response: 2,})
    db[:questionnaires].insert_one({id: 2, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 3, questionID: 1, response: 2,})
    db[:questionnaires].insert_one({id: 3, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 3, questionID: 3, response: 0,})
    
    db[:questionnaires].insert_one({id: 4, questionID: 1, response: 0,})
    db[:questionnaires].insert_one({id: 4, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 4, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 5, questionID: 1, response: 0,})
    db[:questionnaires].insert_one({id: 5, questionID: 2, response: 0,})
    db[:questionnaires].insert_one({id: 5, questionID: 3, response: 2,})
    db[:questionnaires].insert_one({id: 6, questionID: 1, response: 1,})
    db[:questionnaires].insert_one({id: 6, questionID: 2, response: 1,})
    db[:questionnaires].insert_one({id: 6, questionID: 3, response: 2,})
=end