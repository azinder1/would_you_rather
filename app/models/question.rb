class Question < ActiveRecord::Base
  validates :option1, :presence => true
  validates :option2, :presence => true
  has_many :comments
  has_many :responses
  belongs_to :user

  has_attached_file :option1_photo, styles: { medium: "200x200#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :option1_photo, content_type: /\Aimage\/.*\z/

  has_attached_file :option2_photo, styles: { medium: "200x200#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :option2_photo, content_type: /\Aimage\/.*\z/


  def get_option1_total
    responses = Response.where(question_id: self.id)
    option1_total = 0
    responses.each do |r|
      if r.option1
        option1_total += 1
      end
    end
    if responses.length == 0
      return 0
    else
      return (100 * option1_total/(responses.length))
    end
  end

  def get_option2_total
    responses = Response.where(question_id: self.id)
    option2_total = 0
    responses.each do |r|
      if r.option1 === false
        option2_total += 1
      end
    end
    if responses.length == 0
      return 0
    else
      return (100 * option2_total/(responses.length))
    end
  end
end
