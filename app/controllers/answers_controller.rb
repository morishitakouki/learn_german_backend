class AnswersController < ApplicationController

  def check
    choice = Choice.find(params[:choice_id])

    if choice.is_correct
      render json: { correct: true, message: "正解です！" }
    else
      render json: { correct: false, message: "不正解です。" }
    end
  end
end
