class Question
  include Mongoid::Document
  
=begin
  Response Types: 
  0 = Standard Multiple Choice
  1 = Put in order
  2 = Scale
  3 = True / False
  
  Relation Types:
  0 = Likes attract
  1 = Opposites attract
=end
  
  # Fields
  field :prompt,       type: String,  default: ""
  field :id,           type: Integer, default: 0
  field :responseType, type: Integer, default: 0
  field :responses,    type: String,  default: ""
  field :relation,     type: Integer, default: 0
  
end