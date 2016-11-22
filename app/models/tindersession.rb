class Tindersession < ActiveRecord::Base
    has_many :dogs 
    belongs_to :user
    has_many :likes
    
end
