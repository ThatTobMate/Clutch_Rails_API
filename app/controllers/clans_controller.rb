class ClansController < ApplicationController
  before_action :set_clan, only: [:show, :update, :destroy]

  # GET /clans
  # GET /clans.json
  def index
    @clans = Clan.all

    render json: @clans
  end

  # GET /clans/1
  # GET /clans/1.json
  def show
    render json: @clan
  end

  # POST /clans
  # POST /clans.json
  def create
    @clan = Clan.new(clan_params)

    if @clan.save
      render json: @clan, status: :created, location: @clan
    else
      render json: @clan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clans/1
  # PATCH/PUT /clans/1.json
  def update
    @clan = Clan.find(params[:id])

    if @clan.update(clan_params)
      head :no_content
    else
      render json: @clan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clans/1
  # DELETE /clans/1.json
  def destroy
    @clan.destroy

    head :no_content
  end

  private

    def set_clan
      @clan = Clan.find(params[:id])
    end

    def clan_params
      params.require(:clan).permit(:name, :ladder_id, :description)
    end
end
