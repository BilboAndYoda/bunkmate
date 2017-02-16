class Answer
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :email, type: String
  field :questionid, type: Integer
  field :qa1, type: Integer
  field :qa2, type: Integer
  field :qa3, type: Integer
  field :qa4, type: Integer
  field :qa5, type: Integer
  field :qa6, type: Integer
  field :qa7, type: Integer
  field :qa8, type: Integer
  field :qa9, type: Integer
  field :qa10, type: Integer
  field :qa11, type: Integer
  field :qa12, type: Integer
  
end