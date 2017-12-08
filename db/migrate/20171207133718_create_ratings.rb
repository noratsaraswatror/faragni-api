class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.decimal :rating
      t.text :review, null: true
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.timestamps
    end
  end
end
