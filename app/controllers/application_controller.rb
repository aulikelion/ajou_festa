class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :admin?
  def after_sign_in_path_for(resource )#로그인하면 home/administratorsitemap 로 가게 했음
    home_administrator_sitemap_url home_administrator_sitemap_path 
  end
  
  def admin? #관리자인지(=로그인했는지) 확인 후... nav바에 전용 link 추가
    if current_administrator.present? && current_administrator.admin == true
      @admin_finder = true
    end
  end

end