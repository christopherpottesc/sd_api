class CreateDemands < ActiveRecord::Migration[5.0]
  def change
    create_table :demands do |t|
      t.string :description
      t.string :observation
      t.string :value
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
