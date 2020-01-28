# Preview all emails at http://localhost:3000/rails/mailers/spoiler_mailer
class SpoilerMailerPreview < ActionMailer::Preview
    def new_spoiler_email
        # Set up a temporary order for the preview
        spoiler = Spoiler.new(email: "carvedtriangle@gmail.com", mailtitle: "Ignas test", spoilercontent: "Yeet Skeet!")
    
        SpoilerMailer.with(spoiler: spoiler).new_spoiler_email
      end
end
