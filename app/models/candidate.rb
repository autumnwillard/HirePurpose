class Candidate < ApplicationRecord
    enum :status, [:undecided, :hell_no, :not_a_fit, :on_the_fence, :shows_promise, :strong_contender, :hire_this_person]
    has_rich_text :notes
    has_one_attached :resume
    has_one_attached :cover_letter
    validates :name, presence: true
end
