class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def assert_admin_rights
    unless current_user.nil?
      if current_user.admin?
        return true
      end
    end

    false
  end

  def assert_project_manager_rights
    unless current_user.nil?
      if current_user.admin? || current_user.project_manager?
        return true
      end
    end

    false
  end
end
