class CreateMultiplexes < ActiveRecord::Migration[5.2]
  def change
    create_table :multiplexes do |t|
      t.string :name
      t.timestamps
    end
  end
end
