class ApplicationController < ActionController::Base
    
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
            redirect_to login_url
        end
    end
    
    def counts(user)
        @count_microposts = user.microposts.count
        @conunt_followings = user.followings.count
        @conut_follwers = user.followers.count
    end    
end
