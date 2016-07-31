class Tournament < ApplicationRecord
before_save {tournamentname.downcase! }
validates :tournamentname, presence: true, length:{maximum: 50}
validates :sport, presence: true, length:{maximum:20}
validates :tournamentaddress, presence: true, length:{maximum: 255}
validates :zipcode, presence: true, length:{maximum: 5}
validates :state, presence: true, length:{maximum:20}
end
