class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    @students = @dojo.students
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def create
    Student.create(student_params)
    redirect_to dojo_students_path
  end

  def show
    @student = Student.find(params[:id])
    @dojo = @student.dojo
    @students = @dojo.students

  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def update
    Student.find(params[:id]).update(student_params)
    redirect_to dojo_student_path
  end

  def destroy
    Dojo.find(params[:dojo_id]).students.find(params[:id]).destroy
    redirect_to dojo_students_path
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end

end
