class ApplicationController < ActionController::Base

	skip_before_action :verify_authenticity_token

	def hello_rails
		
		html_output = "<html><head></head><body><p>Hello Python</p></body></html>"

		render html: html_output.html_safe
	end



end
 