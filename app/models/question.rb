class Question < ActiveRecord::Base
  has_many :comments
  has_many :responses
  belongs_to :user, through: :response
end
