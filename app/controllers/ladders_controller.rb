class LaddersController < ApplicationController
  before_action :set_ladder, only: [:show, :update, :destroy]

  # GET /ladders
  # GET /ladders.json
  def index
    @ladders = Ladder.all

    render json: @ladders
  end

  # GET /ladders/1
  # GET /ladders/1.json
  def show
    render json: @ladder
  end

  def get_clans
    t = Clan.where(ladder_id: params[:id])
    render json: t
  end

  # POST /ladders
  # POST /ladders.json
  def create
    @ladder = Ladder.new(ladder_params)

    if @ladder.save
      render json: @ladder, status: :created, location: @ladder
    else
      render json: @ladder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ladders/1
  # PATCH/PUT /ladders/1.json
  def update
    @ladder = Ladder.find(params[:id])

    if @ladder.update(ladder_params)
      head :no_content
    else
      render json: @ladder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ladders/1
  # DELETE /ladders/1.json
  def destroy
    @ladder.destroy

    head :no_content
  end

  private

    def set_ladder
      @ladder = Ladder.find(params[:id])
    end

    def ladder_params
      params.require(:ladder).permit(:name, :game_id)
    end
end
