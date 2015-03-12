class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    if @developer.save
      redirect_to @developer, notice: 'Developer was created.'
    else
      render :new
    end
  end

  def update
    if @developer.update(developer_params)
      redirect_to @developer, notice: 'Developer was updated.'
    else
      render :edit
    end
  end

  def destroy
    @developer.destroy
    if @developer.errors.count > 0
      redirect_to developers_url, notice: 'You cannot delete a developer with a time entry.'
    else
      redirect_to developers_url, notice: 'Developer was deleted.'
    end
  end

  def show
  end

  def edit
  end

  private def set_developer
    @developer = Developer.find(params[:id])
  end

  private def developer_params
    params.require(:developer).permit(:name, :email, :password)
  end
end
