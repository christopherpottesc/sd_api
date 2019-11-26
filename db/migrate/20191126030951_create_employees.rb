class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :function

      t.timestamps
    end
  end
end
