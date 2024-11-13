class CreateAvis < ActiveRecord::Migration[7.1]
  def change
    create_table :avis do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
