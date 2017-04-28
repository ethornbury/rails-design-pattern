class SessionsController < Devise::SessionsController
    #after_sign_in_path_for is called by devise
    #we are over-riding the devise method
    def after_sign_in_path_for(user) 
        "/signedinuserprofile" 
    #here we provide
    #the path for the user's profile
    end
end