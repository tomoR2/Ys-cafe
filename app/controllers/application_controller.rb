class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?




  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :first_name, :birth_day])
  end

  # deviseのデフォルトはroot_pathなのでpath変更
  protected

  def after_sign_in_path_for(resource)
    users_index_path
  end

  def after_sign_out_path_for(resource)
    users_index_path
  end
end
