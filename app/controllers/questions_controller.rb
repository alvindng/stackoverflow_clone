class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    @question.user_id = session[:user_id]
      if @question.save
        flash[:notice] = "Question saved!"
        redirect_to questions_path
      else
        render :new
      end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end

end
