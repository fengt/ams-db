class Dict < ApplicationRecord
  has_many :dict_details, dependent: :destroy
  validates :name, presence: true
end
