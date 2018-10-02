class AddColumnBook < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
    add_column :books, :star, :integer
  end
end
