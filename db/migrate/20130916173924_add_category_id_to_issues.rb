class AddCategoryIdToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :category_id, :integer

    remove_column :issues, :category

  end
end
