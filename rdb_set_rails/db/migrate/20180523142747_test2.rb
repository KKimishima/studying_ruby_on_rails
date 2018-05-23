class Test2 < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :name, String, null: true
  end
end
