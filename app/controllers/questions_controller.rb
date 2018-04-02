class QuestionsController < ApplicationController
  def ask
    @question = "Ask you coach anything"
  end

  def answer
    @user_answer = params[:question]

    if @user_answer == "I am going to work"
      @response = "Great"
    elsif @user_answer[-1] == "?"
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end

