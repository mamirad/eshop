class HomeController < ActionController::Base
	before_action :authenticate_user!
	layout "mylayout"
	def index
	render template: "home/admin"
	end
end
