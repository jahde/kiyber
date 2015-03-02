class AddCategoryToItems < ActiveRecord::Migration
  def change
    add_column :items, :category_id, :string
  end
end
