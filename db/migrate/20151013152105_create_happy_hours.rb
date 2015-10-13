class CreateHappyHours < ActiveRecord::Migration
  def change
    create_table :happy_hours do |t|
      t.string "name"
      t.text "description"
      t.string "address"
      t.float "latitude"
      t.float "longitude"
      t.string "yelp_id"
      t.string "category"

      t.timestamps null: false
    end
  end
end
