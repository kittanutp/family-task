class Task < ApplicationRecord
    belongs_to :family_member
    enum status: { complete: "complete", delay: "delay", incomplete: "incomplete" }
end
