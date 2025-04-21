class Candidate < ApplicationRecord
    enum :status, [:reviewing, :rejected, :considering, :interviewing, :making_offer, :hired]
    validates :name, presence: true
end
