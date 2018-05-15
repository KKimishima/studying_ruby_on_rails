class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :tilte
      t.string :contents

      t.timestamps
    end
  end
end
