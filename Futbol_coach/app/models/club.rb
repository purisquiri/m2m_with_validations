class Club < ApplicationRecord
    validates :name, :city, :home_arena, :wins, :losses, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    validates :wins, :losses, :inclusion => { :in => 0..10,  
                                            :message => " should be between 0 and 10, you gave us %{value}."}
    # validates :field_type, :inclusion => { :in => %w(SA LA RB CB SB Date),
    #     :message => "The value: %{value} is not included in Field Type." }
    # numericality: {greater_than_or_equal_to: 0,
     #                                        less_than_or_equal_to: 10}
    
    has_many :players

end
