class ChangeCloumnDefault < ActiveRecord::Migration
  def change
    change_column_default :books, :star, 0
  end
end
