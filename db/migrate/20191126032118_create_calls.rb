class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.string :activity
      t.string :name
      t.string :phone
      t.string :value
      t.string :value_displacement
      t.integer :deadline
      t.integer :cep
      t.string :street
      t.string :neighborhood
      t.string :city
      t.integer :number
      t.date :start_date

      t.timestamps
    end
  end
end
