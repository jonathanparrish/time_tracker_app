class TimeEntriesController < ApplicationController
  before_action :set_time_entry, only: [:show, :edit, :update, :destroy]
  before_action :check_developer, :only => [:edit, :update, :destroy]

  def check_developer
    unless current_user.id == @time_entry.developer_id
      redirect_to (request.referrer || root_path), notice: 'You cannot modify someone elses time.'
      # return
    end
  end

  def index
    @time_entries = TimeEntry.all
  end

  def new
    @time_entry = TimeEntry.new
  end

  def create
    @time_entry = TimeEntry.new(time_entry_params)
    if @time_entry.save
      redirect_to @time_entry, notice: 'Time Entry was created.'
    else
      render :new
    end
  end

  def update
    if @time_entry.update(time_entry_params)
      redirect_to @time_entry, notice: 'Time Entry was updated.'
    else
      render :edit
    end
  end

  def destroy
    @time_entry.destroy
    redirect_to time_entries_url, notice: 'Time Entry was deleted.'
  end

  def show
  end

  def edit
  end

  private def set_time_entry
    @time_entry = TimeEntry.find(params[:id])
  end

  private def time_entry_params
    params.require(:time_entry).permit(:developer_id, :hours, :worked_on, :project_id)
  end
end
