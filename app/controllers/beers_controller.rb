class BeersController < OpenReadController
# class BeersController < ApplicationController

  before_action :set_beer, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:index, :show, :update, :destroy]

  # GET /beers
  # GET /beers.json
  def index
    if current_user
      @beers = current_user.profile.beers
    else
      @beers = Beer.all
    end
    # user = User.find(params[:id])

    # @my_beers = @beers.findBy(@urrent_user)
    # render json: @my_beers
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
    # current_user.beers << @beer



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
      params.require(:beers).permit(:beer_name, :company_name, :beer_style, :abv,
                              :appearance, :aroma, :palate, :flavor, :packaging,
                              :notes, :rating, :drink_again, :photo)
    end
end
