class AddSlugToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :slug, :string
    #post table with slug column added with type string
    add_index :posts, :slug, unique: true
  end
end
