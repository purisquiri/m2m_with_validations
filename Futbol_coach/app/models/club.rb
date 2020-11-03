class Club < ApplicationRecord
    validates :name, :city, :home_arena, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    
    validate :wins_and_losses_max

    has_many :players

    def wins_and_losses_max
        
        if self.wins < 0 || self.wins > 10
            errors.add(:wins, "should be between 0 and 10")
        elsif self.losses < 0 || self.losses > 10
            errors.add("should be between 0 and 10")
        end
        # elsif :wins + :losses > 10
        #    errors.add("Wins and losses must exit and not add to more than ten games")
        # end
    end

end
