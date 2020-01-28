class SpoilerMailer < ApplicationMailer
    default from: 'ignaspan@gmail.com'
  def new_spoiler_email
    @spoiler = params[:spoiler]

    mail(to: @spoiler.email, subject: @spoiler.emailtitle)
  end
end
