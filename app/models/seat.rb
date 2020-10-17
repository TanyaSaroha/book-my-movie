class Seat < ApplicationRecord
  belongs_to :screen

  TYPES = { "silver": "Silver", "gold": "Gold", "platinum": "Platinum" }
  COSTS = { "silver": 150, "gold": 200, "platinum": 300 }

end
