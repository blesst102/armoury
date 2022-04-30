class Armrequest < ApplicationRecord

  has_one_attached :avatar
  
  belongs_to :arm
  belongs_to :personnel
end
