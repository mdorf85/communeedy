class CreateHoods < ActiveRecord::Migration
  def change
    create_table :hoods do |t|
      t.string :name
      t.string :borough, default: nil

      t.timestamps null: false
    end
  end
end