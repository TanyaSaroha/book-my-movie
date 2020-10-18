class Screen < ApplicationRecord
  belongs_to :multiplex
  has_many :seats
  has_many :shows

  after_create :create_seats

  def create_seats
    30.times do |n|
      Seat.create(code: "S#{n+1}", type: "silver", screen_id: id)
    end

    40.times do |n|
      Seat.create(code: "G#{n+1}", type: "gold", screen_id: id)
    end

    30.times do |n|
      Seat.create(code: "P#{n+1}", type: "platinum", screen_id: id)
    end
  end

  def self.dropdown_list
    all.pluck(:name, :id)
  end
end
