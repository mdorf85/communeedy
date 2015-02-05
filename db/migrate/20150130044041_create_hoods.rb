class CreateHoods < ActiveRecord::Migration
  def change
    create_table :hoods do |t|
      t.string :name
      t.string :city
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

#TODO REMOVE CITY