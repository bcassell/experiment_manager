class ApplicationController < ActionController::Base
  expose(:model_name){ params[:controller].singularize }
  expose(:klass){ model_name.classify.constantize }
  expose(:sort_direction){ %w[ASC DESC].include?(params[:direction]) ? params[:direction] : "ASC" }
  expose(:sort_column){ params[:sort] ||= default_order }
  expose(:secondary_order){ params[:secondary_order] || "" }
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

end
