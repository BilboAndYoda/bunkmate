class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def new
    @questionnaire = Questionnaire.new
  end
  
  def create
    @questionnaire = Questionnaire.new(params.require(:questionnaire).permit(:question_1, :question_2, :question_3))
    
    if @questionnaire.save
      redirect_to questionnaires_url
    else
      render 'new'
    end
  end
end
