class QuestionsController < ApplicationController
  
  def random
    # ランダムに1つの問題を取得
    question = Question.order("RAND()").first
    # 正解の選択肢を取得
    correct_answer = question.choices

    # 正解以外の選択肢をランダムに3つ取得
    incorrect_answers = Choice.where.not(question_id: question.id).order("RAND()").limit(3)

    # 正解の選択肢と不正解の選択肢を組み合わせてシャッフル
    choices = [correct_answer, *incorrect_answers].shuffle

    render json: { question: question, choices: choices }
  end
end
