class ApplicationController < ActionController::Base
	protected
		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up,keys:[:last_name, :first_name, :last_name_kana, :frist_name_kana, :postal_code, :address, :phone])
		end

	# private
	def after_sign_in_path_for(resource)
		admins_users_path
		# case resource
		# when Admin
		# 	admins_path
		# when User
		# 	root_path
		# end
		# サインしたら自分のページに飛ぶようにする
		# "/users/#{current_user.id}"
	end

	def after_sign_out_path_for(resource)
		root_path
	end
end
