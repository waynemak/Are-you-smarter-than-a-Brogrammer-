class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :content
      t.text :answer_options
      t.integer :correct_answer
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
