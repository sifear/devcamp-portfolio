module ApplicationHelper
    def login_helper style
         if current_user.is_a?(GuestUser) 
            (link_to "Register", new_user_registration_path, method: :get, class: style) +  
            (link_to "Log in", new_user_session_path, method: :get, class: style)
         else 
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
         end 
    end

    def source_helper
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]}"
            content_tag :p, greeting, class: "source-greeting"
        end 
    end
     
	def set_copyright
		@copyright = DevcampViewTool::Renderer.copyright "Daniel Békési", "All right reserved"
	end
end
