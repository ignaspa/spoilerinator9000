class SpoilerMailer < ApplicationMailer
    default from: 'ignaspan@gmail.com'
  def new_spoiler_email(spoiler)
    @spoiler = spoiler
    puts "*************************"
    puts @spoiler
    puts "*************************"
    mail(:to => @spoiler.email, :subject => @spoiler.emailtitle)
  end
end
