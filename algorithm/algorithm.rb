require_relative  'student'
require_relative  'question'
require_relative  'questionnaire'

#gem install mongo
require 'rubygems'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::DEBUG

begin

    test = Student.new
    test.toString()
    
    #db = Mongo::Connection.new.db("testDB") # OR
    #db = Mongo::Connection.new("localhost").db("mydb") # OR
    db = Mongo::Client.new([ 'localhost' ], :database => 'bm_development')
    #db = Mongo::Connection.new("localhost", 27017).db("testDB")
    
    db.database_names.each { |name| puts name }
    
    rescue Mongo::Error::NoServerAvailable => e
    
        p "Cannot connect to the server"
        p e
    
end

#collection = db[:answer]