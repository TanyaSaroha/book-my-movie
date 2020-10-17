class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :code
      t.string :type

      t.references :screen

      t.timestamps
    end
  end
end
