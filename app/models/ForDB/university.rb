class University
  include Mongoid::Document
  
  # Fields
  field :name,  type: String,  default: ""
  field :id,    type: Integer, default: 0
  field :email, type: String,  default: ""
  
end