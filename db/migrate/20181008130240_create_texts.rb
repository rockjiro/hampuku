class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :question
      t.text :answer
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
