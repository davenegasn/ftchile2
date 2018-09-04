class AccessController < ApplicationController

	layout 'login'
	#confim logged in will run at every page but..
	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

	def login
	end

	def attempt_login
		if params[:email].present? && params[:password].present?
			found_user = User.where(:email => params[:email]).first
			if found_user 
				authorized_user = found_user.authenticate(params[:password])
			end
		end

		if authorized_user
			session[:user_id] = authorized_user.id
			redirect_to(articles_path)
		else 
			flash.now[:notice] = "Nombre de usuario/password incorrecto"
			render('login')
		end 

	end 

	def logout
		session[:user_id] = nil
		flash[:notice] = session[:user_id] 
		redirect_to(access_login_path)
	end 

	

end
