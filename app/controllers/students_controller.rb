class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find_by(id: params[:id])
    if @student
      render :show
    else
      redirect_to :index
    end
  end
end