require 'csv'

class Seat < ApplicationRecord
  belongs_to :screen
  has_many :bookings
  has_many :shows, through: :bookings

  self.inheritance_column = 'inheritance_type'

  TYPES = { "silver": "Silver", "gold": "Gold", "platinum": "Platinum" }
  COSTS = { "silver": 150, "gold": 200, "platinum": 300 }


  def seat_style(show_id)
    return "sold" if bookings.where(show_id: show_id).exists?
  end

  def is_booked(show_id)
    shows.where(id: show_id).present? ? 'YES' : 'NO'
  end

  def self.to_csv(show_id)
    headers = ["Seat", "Type", "Is Booked"]
    CSV.generate(headers: true) do |csv|
      csv << headers
      all.each do |seat|
        csv << [seat.code, TYPES.as_json[seat.type], seat.is_booked(show_id)]
      end
    end
  end

end
