class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show edit update destroy]
  before_action :set_questions, only: %i[index]

  def index
  end

  def show
    @answer = @question.answers.build
    @answers = @question.answers.order created_at: :desc
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    if @question.save
      flash[:success] = "Question created!"
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @question.update question_params
      flash[:warning] = "Question updated!"
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    if @question.destroy
      flash[:danger] = "Question deleted!"
      redirect_to questions_path
    else
      render plain: "Can't delete question"
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

  def set_question
    @question = Question.find params[:id]
  end

  def set_questions
    @questions = Question.all.order(created_at: :desc)
  end
end