class Player < ApplicationRecord
    
    validates :name, :email, uniqueness: {case_sensitive: false}
    validates :phone_number, length: {is: 10}
    validates :phone_number, :email, :player_number, :name, presence: true
    validates :player_number, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 99}
    
    belongs_to :club

end

