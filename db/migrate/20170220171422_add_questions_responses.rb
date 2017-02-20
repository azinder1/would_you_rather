class AddQuestionsResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :option1, :string
      t.column :option2, :string
      t.column :user_id, :integer
    end
    create_table :responses do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :option1, :boolean

      t.timestamps
    end
    create_table :comments do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :content, :string

      t.timestamps
    end
  end
end
