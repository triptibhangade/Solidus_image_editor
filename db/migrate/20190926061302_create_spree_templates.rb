class CreateSpreeTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_templates do |t|
      t.decimal :width
      t.decimal :height
      t.string :edges
      t.string :slug
      t.datetime :deleted_at
      t.string :name
      t.string :description
      t.string :background_color
      t.string :background_image_content_type
      t.string :background_image_file_name
      t.integer :resolution
      t.integer :number_of_images
      t.integer :number_of_text_boxes
      t.integer :background_image_file_size
      t.datetime :background_image_updated_at
      
      t.timestamps
    end
  end
end
