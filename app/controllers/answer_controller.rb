class AnswerController < ApplicationController
  def index
    @answer = Answer.new
  end
  
  def new
     @answer = Answer.new
  end
  
end
