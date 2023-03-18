class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif question.downcase == "i am going to work right now!"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
