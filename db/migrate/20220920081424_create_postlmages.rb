class CreatePostlmages < ActiveRecord::Migration[6.1]
  def change
    create_table :postlmages do |t|

      # t.integer :id
      t.string :shop_name
      t.text :caption
      # t.integer :user_id

      # t.timestamps
    end
  end
end