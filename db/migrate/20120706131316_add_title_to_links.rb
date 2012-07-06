class AddTitleToLinks < ActiveRecord::Migration
  def change
    add_column :links, :title, :text
  end
end
