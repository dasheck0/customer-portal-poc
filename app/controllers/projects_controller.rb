class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
