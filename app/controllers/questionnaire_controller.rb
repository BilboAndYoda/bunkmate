class QuestionnaireController < ApplicationController
  def index
    @questionnaire = Questionnaire.new
  end
end
