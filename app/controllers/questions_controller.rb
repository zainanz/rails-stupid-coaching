class QuestionsController < ApplicationController
  def ask
  end
  def respond
      if !params[:ask]
        return
      end
      @question = params[:ask]
      @reply = "I don't care, get dressed and go to work!"
      if @question.include?("?")
        @reply = "Silly question, get dressed and go to work!"
      elsif @question == "i am going to work"
        @reply = "Great!"
      end
  end
end
