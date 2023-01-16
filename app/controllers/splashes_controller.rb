class SplashesController < ApplicationController
    def index
        return unless current_user

    redirect_to user_url(current_user)
    end
end
