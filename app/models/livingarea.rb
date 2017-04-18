class LivingArea
  include Mongoid::Document
  
  # Fields
  field :name,          type: String,  default: ""
  field :id,            type: Integer, default: 0
  field :ruleset_ID,    type: Integer, default: 0
  field :university_ID, type: Integer, default: 0
  
end