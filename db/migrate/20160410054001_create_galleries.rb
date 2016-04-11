class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
    	t.string :caption
    	t.string :image_file
    	t.integer :image_size

      t.timestamps null: true
    end
  end
end
