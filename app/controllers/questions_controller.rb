# class question
class QuestionsController < ApplicationController
  @@numtime = 0
  def answer
    regex = /\?/
    @@numtime += 1
    @question = params[:question]
    @answer = if regex.match?(@question)
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work'
                'Great!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end

  def ask
    @numtime = @@numtime
  end
end
