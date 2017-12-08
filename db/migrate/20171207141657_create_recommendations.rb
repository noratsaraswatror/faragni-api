class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.belongs_to :movie
      t.decimal :ExpectedRating
      t.decimal :UserRating
      t.string :Message

      t.timestamps
    end
  end
end
