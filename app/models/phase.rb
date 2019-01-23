class Phase < ApplicationRecord

  belongs_to :account
  has_many :projects, dependent: :nullify

  attr_accessible :name

end
