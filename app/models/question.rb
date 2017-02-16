class Question
  include Mongoid::Document
  
  # Fields
  field :prompt,       type: String,  default: ""
  field :id,           type: Integer, default: 0
  field :responseType, type: Integer, default: 0
  field :responses,    type: String,  default: ""
  field :relation,     type: Integer, default: 0
  
end