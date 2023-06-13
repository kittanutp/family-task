class Task < ApplicationRecord
    belongs_to :family_member
    enum status: { complete: 1, delay: 2, incomplete: 0}
end
