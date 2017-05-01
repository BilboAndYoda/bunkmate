class Questionnaire
  include Mongoid::Document
  
  # Fields
  field :id,           type: Integer, default: 0
  field :questionID,   type: Integer, default: 0
  field :response,     type: Integer, default: 0
  
end