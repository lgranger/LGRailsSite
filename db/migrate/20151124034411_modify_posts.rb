class ModifyPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      add_column :posts, :title, :string
      add_column :posts, :content, :string
      add_column :posts, :pub_dat, :datetime
      add_column :posts, :category_id, :integer
    end
  end
end
