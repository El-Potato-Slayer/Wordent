class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :priority
      # t.references :article

      t.timestamps
    end
  end
end
