class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  private

  def require_admin
    redirect_to root_path, alert: 'You are not authorized to access this page' unless current_user.admin?
  end
end
