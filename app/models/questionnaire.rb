class Questionnaire
  include Mongoid::Document
  field :question_1, type: Integer
  field :question_2, type: Integer
  field :question_3, type: Integer
end
