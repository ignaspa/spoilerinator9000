class SpoilersController < ApplicationController
    def create
        @spoiler = Spoiler.new(:email => params[:email], :mailtitle => params[:mailtitle], :spoilercontent => params[:spoilercontent])
     
        SpoilerMailer.with(spoiler: @spoiler).new_spoiler_email.deliver_later

    end
end
