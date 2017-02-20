class Question < ActiveRecord::Base
  validates :option1, :presence => true
  validates :option2, :presence => true
  has_many :comments
  has_many :responses
  belongs_to :user
end
