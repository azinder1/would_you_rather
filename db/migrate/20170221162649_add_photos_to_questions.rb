class AddPhotosToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_attachment :questions, :option1_photo
    add_attachment :questions, :option2_photo
  end
end
