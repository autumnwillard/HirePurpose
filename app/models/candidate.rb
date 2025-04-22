class Candidate < ApplicationRecord
    enum :status, [:reviewing, :rejected, :considering, :interviewing, :making_offer, :hired]
    has_rich_text :notes
    has_one_attached :resume
    has_one_attached :cover_letter
    validates :name, presence: true
end
