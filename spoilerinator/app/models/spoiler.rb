class Spoiler < ActiveRecord::Base
    validates_presence_of :email
    validates_presence_of :mailtitle
    validates_presence_of :spoilercontent
end
