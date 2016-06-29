class TriedBeersController < ApplicationController
  before_action :set_tried_beer, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:show, :update, :destroy]

  # GET /tried_beers
  # GET /tried_beers.json
  def index
    @tried_beers = TriedBeer.all

    render json: @tried_beers
  end

  # GET /tried_beers/1
  # GET /tried_beers/1.json
  def show
    render json: @tried_beer
  end

  # POST /tried_beers
  # POST /tried_beers.json
  def create
    @tried_beer = TriedBeer.new(tried_beer_params)

    if @tried_beer.save
      render json: @tried_beer, status: :created, location: @tried_beer
    else
      render json: @tried_beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tried_beers/1
  # PATCH/PUT /tried_beers/1.json
  def update
    @tried_beer = TriedBeer.find(params[:id])

    if @tried_beer.update(tried_beer_params)
      head :no_content
    else
      render json: @tried_beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tried_beers/1
  # DELETE /tried_beers/1.json
  def destroy
    @tried_beer.destroy

    head :no_content
  end

  private

    def set_tried_beer
      @tried_beer = TriedBeer.find(params[:id])
    end

    def tried_beer_params
      params.require(:tried_beer).permit(:profile_id, :beer_id)
    end
end
