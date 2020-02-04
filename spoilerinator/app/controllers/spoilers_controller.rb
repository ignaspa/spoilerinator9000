class SpoilersController < ApplicationController
    def create
        @spoiler = Spoiler.new(:email => params[:email], :mailtitle => params[:mailtitle], :spoilercontent => params[:spoilercontent])
        sentspoiler = SpoilerMailer.new_spoiler_email(@spoiler)
        sentspoiler.deliver_now
        
    end
end
