class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :customer_name
      t.references :show
      t.references :seat

      t.timestamps
    end
  end
end
