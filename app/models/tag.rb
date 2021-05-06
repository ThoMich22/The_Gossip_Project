class Tag < ApplicationRecord
    has_many :gossips, optional: true
end
