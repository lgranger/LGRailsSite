class ModifyTags < ActiveRecord::Migration
  def change
    change_table :tags do |t|
      add_column :tags, :name, :string
    end
  end
end
