class Screen < ApplicationRecord
  belongs_to :multiplex
  has_many :seats
end
