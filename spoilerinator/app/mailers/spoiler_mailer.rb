class SpoilerMailer < ApplicationMailer
    default from: 'ignaspan@gmail.com'
  def new_spoiler_email(spoiler)
    @spoiler = spoiler
    mail(:to => @spoiler.email, :subject => @spoiler.mailtitle)
  end
end
