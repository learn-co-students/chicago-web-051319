class StudentsController < ApplicationController
  def index
    if params[:cohort_id]
      @cohort = Cohort.find(params[:cohort_id])
      @students = @cohort.students
    else
      @students = Student.all
    end
  end

  def new
    @cohorts = Cohort.all
    @cohort = Cohort.find_by(id: params[:cohort_id])
    @student = Student.new
    @student.textbooks.build([{}, {}])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_url
    else
      @errors = @student.errors.full_messages

      @cohorts = Cohort.all
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :cohort_id, textbooks_attributes: [:vandalized, :title])
  end
end
