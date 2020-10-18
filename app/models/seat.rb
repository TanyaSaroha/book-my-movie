class Seat < ApplicationRecord
  belongs_to :screen
  has_many :bookings
  self.inheritance_column = 'inheritance_type'

  TYPES = { "silver": "Silver", "gold": "Gold", "platinum": "Platinum" }
  COSTS = { "silver": 150, "gold": 200, "platinum": 300 }

end
