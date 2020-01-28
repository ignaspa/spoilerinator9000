class SpoilersController < ApplicationController
    def create
        @spoiler = Spoiler.new(:email=> params[:email], :mailtitle => params[:title], :spoilercontent => params[:content])
     
        respond_to do |format|
          if @user.save
            # Tell the UserMailer to send a welcome email after save
            SpoilerMailer.with(emailcontent: @user).welcome_email.deliver_later
    
          end
        end
    end
end
