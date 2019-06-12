class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)

    if @cohort.save
      redirect_to '/cohorts'
    else
      @errors = @cohort.errors.full_messages
      render :new
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])

    if @cohort.update(cohort_params)
      redirect_to "/cohorts/#{@cohort.id}"
    else
      render :edit
    end
  end

  def delete
    Cohort.destroy(params[:id])
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name)
  end
end
