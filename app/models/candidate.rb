class Candidate < ApplicationRecord
    enum :status, [:reviewing, :rejected, :considering, :interviewing, :making_offer, :hired]
end
