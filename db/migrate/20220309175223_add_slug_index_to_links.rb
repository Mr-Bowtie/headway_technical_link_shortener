class AddSlugIndexToLinks < ActiveRecord::Migration[7.0]
  def change
    add_index :links, :slug, unique: true
  end
end
