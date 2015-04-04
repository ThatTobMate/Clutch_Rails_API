class ClanMatchesController < ApplicationController
  before_action :set_clan_match, only: [:show, :update, :destroy]

  # GET /clan_matches
  # GET /clan_matches.json
  def index
    @clan_matches = ClanMatch.all

    render json: @clan_matches
  end

  # GET /clan_matches/1
  # GET /clan_matches/1.json
  def show
    render json: @clan_match
  end

  # POST /clan_matches
  # POST /clan_matches.json
  def create
    @clan_match = ClanMatch.new(clan_match_params)

    if @clan_match.save
      render json: @clan_match, status: :created, location: @clan_match
    else
      render json: @clan_match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clan_matches/1
  # PATCH/PUT /clan_matches/1.json
  def update
    @clan_match = ClanMatch.find(params[:id])

    if @clan_match.update(clan_match_params)
      head :no_content
    else
      render json: @clan_match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clan_matches/1
  # DELETE /clan_matches/1.json
  def destroy
    @clan_match.destroy

    head :no_content
  end

  private

    def set_clan_match
      @clan_match = ClanMatch.find(params[:id])
    end

    def clan_match_params
      params.require(:clan_match).permit(:result, :status, :title, :clan_a_id, :clan_b_id)
    end
end
