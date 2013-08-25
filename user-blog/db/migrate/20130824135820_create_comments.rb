class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :replay_by
      t.text :replay_content
      t.references :blog

      t.timestamps
    end
    add_index :comments, :blog_id
  end
end
