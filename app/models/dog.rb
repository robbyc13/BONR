class Dog < ActiveRecord::Base
    
    belongs_to :shelter
    # has_many :likes
    has_one :breed
end
