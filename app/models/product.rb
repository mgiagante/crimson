class Product < ApplicationRecord
  has_many :timed_keys
  has_many :consumable_keys
end
