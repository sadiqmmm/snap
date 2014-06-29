class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.boolean :solved, default: false
      t.references :user

      t.timestamps
    end
    add_index :questions, :user_id
  end
end
