class ProjectsController < ApplicationController

  #before_filter :assert_project_manager_rights, :except => [:index, :show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    unless current_user.nil?
      if current_user.admin? || current_user.project_manager?
        project = Project.new(params[:project])

        if project.valid?
          project.save!
        end
      end
    end

    redirect_to projects_path
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    unless current_user.nil?
      if current_user.admin? || current_user.project_manager?
        id = params[:id]
        Project.destroy(id)
      end
    end

    redirect_to projects_path
  end

end
