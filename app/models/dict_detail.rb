class DictDetail < ApplicationRecord
  belongs_to :dict
  validates :name, presence: true
end
