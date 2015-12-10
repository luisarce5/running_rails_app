class RunsController < ApplicationController

  # before_action :authorize

  def index
    @runs = Loan.all
    # pending to add search function
  end

  def show
    @run = Run.find(params[:id])
  end

  def new
    @run = Run.new
  end

  def create
    run = Run.create(run_params)
    run.user_id = current_user.id
    if run.save
      redirect_to '/runs'
    else
      redirect_to '/runs/new'
    end
  end

  def edit
    @run = Run.find(params[:id])
  end

  def update
    run = Run.find(params[:id])
    if run.update(run_params)
      redirect_to '/runs'
    else
      redirect_to '/runs/edit'
    end
  end

  def destroy
    run = Run.find(params[:id])
    run.destroy
    redirect_to '/runs'
  end

  # private

  def run_params
    params.require(:run).permit(
    :date,
    :distance,
    :start_time,
    :duration,
    :pace,
    :route,
    :run_type,
    :comments,
    :shoes,
    :weight,
    :calories,
    )
  end

end # end of Class
