class CandidatesController < ApplicationController
  before_action :set_candidate, only: %i[ show edit update ]
  def index
    @candidates = Candidate.all
  end

  def show
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to @candidate
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @candidate.update(candidate_params)
      redirect_to @candidate
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    def candidate_params
      params.expect(candidate: [ :name ])
    end
end
