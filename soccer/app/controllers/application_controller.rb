class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      false
    end
  end

  def logged_in?
    current_user.present?
  end

  def authenticate
    unless current_user
      redirect_to root
    end

      authenticated :user do
  root :to => 'sessions#new', :as => :authenticated_root
end
root :to => redirect('http://www.goggle.com')
  end

end
