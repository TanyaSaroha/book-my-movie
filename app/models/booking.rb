require 'csv'

class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :seat

  def self.to_csv
    attributes = %w{id seat show}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

end
