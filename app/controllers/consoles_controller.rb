class ConsolesController < ApplicationController
  before_action :set_console, only: [:show, :update, :destroy]

  # GET /consoles
  # GET /consoles.json
  def index
    @consoles = Console.all

    render json: @consoles
  end

  # GET /consoles/1
  # GET /consoles/1.json
  def show
    render json: @console
  end

  # POST /consoles
  # POST /consoles.json
  def create
    @console = Console.new(console_params)

    if @console.save
      render json: @console, status: :created, location: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consoles/1
  # PATCH/PUT /consoles/1.json
  def update
    @console = Console.find(params[:id])

    if @console.update(console_params)
      head :no_content
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consoles/1
  # DELETE /consoles/1.json
  def destroy
    @console.destroy

    head :no_content
  end

  private

    def set_console
      @console = Console.find(params[:id])
    end

    def console_params
      params.require(:console).permit(:name)
    end
end
