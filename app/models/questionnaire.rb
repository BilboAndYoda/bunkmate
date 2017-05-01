class Questionnaire
  include Mongoid::Document
  
  # Fields
  field :email,        type: String,  default: ""
  field :questionID,   type: Integer, default: 0
  field :response,     type: Integer, default: 0
  
end