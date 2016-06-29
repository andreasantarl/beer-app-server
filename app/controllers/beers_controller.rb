class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:show, :update, :destroy]

  # GET /beers
  # GET /beers.json
  def index
    @beers = Beer.all

    render json: @beers
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
    render json: @beer
  end

  # POST /beers
  # POST /beers.json
  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  # PATCH/PUT /beers/1.json
  def update
    @beer = Beer.find(params[:id])

    if @beer.update(beer_params)
      head :no_content
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  # DELETE /beers/1.json
  def destroy
    @beer.destroy

    head :no_content
  end

  private

    def set_beer
      @beer = Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:beer_name, :company_name, :beer_style, :abv, :abv, :notes, :rating, :drink_again)
    end
end
