class Test < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :name, String, null: false
  end
end
