class CreateLinkposts < ActiveRecord::Migration
  def change
    create_table :linkposts do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
