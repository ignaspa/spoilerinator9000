class Spoiler < ActiveRecord::Base
    include ActiveModel::Model
    attr_accessor :email, :mailtitle, :spoilercontent
    validates :email, :mailtitle, :spoilercontent, presence: true
end
