class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.references :screen
      t.references :movie
      t.date :date
      t.string :time_slot

      t.timestamps
    end
  end
end
