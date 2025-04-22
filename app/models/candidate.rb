class Candidate < ApplicationRecord
    enum :status, [:application_received, :under_review, :rejected, :phone_screen, :technical_interview, :take_home_exercise, :final_review, :offer_extended, :hired]
    has_rich_text :notes
    has_one_attached :resume
    has_one_attached :cover_letter
    validates :name, presence: true
end
