class DestroyBooks < ActiveRecord::Migration
  def change
    drop_table :Books
  end
end
