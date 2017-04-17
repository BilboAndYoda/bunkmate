class Student
  include Mongoid::Document

  # Fields
  field :firstName,      type: String,  default: ""
  field :middleInit,     type: String,  default: ""
  field :lastName,       type: String,  default: ""
  field :id,             type: Integer, default: 0
  field :gender,         type: String,  default: ""
  field :questionaireID, type: Integer, default: 0
  field :roomID,         type: Integer, default: 0
  field :email,          type: String,  default: ""
  
end
