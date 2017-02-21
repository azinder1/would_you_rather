class Question < ActiveRecord::Base
  validates :option1, :presence => true
  validates :option2, :presence => true
  has_many :comments
  has_many :responses
  belongs_to :user

  def get_option1_total
    responses = Response.where(question_id: self.id)
    option1_total = 0
    responses.each do |r|
      if r.option1
        option1_total += 1
      end
    end
    return option1_total
  end

  def get_option2_total
    responses = Response.where(question_id: self.id)
    option2_total = 0
    responses.each do |r|
      if r.option1 === false
        option2_total += 1
      end
    end
    return option2_total
  end
end
