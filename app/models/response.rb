class Response < ActiveRecord::Base
  validates :option1, :presence => true
  belongs_to :question
  belongs_to :user
end
