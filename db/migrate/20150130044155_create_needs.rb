class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title
      t.string :reason
      t.integer :priority
      t.boolean :fulfilled
      t.integer :hood_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
