class BeersController < OpenReadController
# class BeersController < ApplicationController

  before_action :set_beer, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:index, :show, :create, :update, :destroy, :allbeers]
  # GET /beers
  # GET /beers.json
  def index
    if current_user
      @beers = current_user.profile.beers
    # else
    #   @beers = Beer.all
    end
    # user = User.find(params[:id])

    # @my_beers = @beers.findBy(@urrent_user)
    # render json: @my_beers
    render json: @beers
  end

# GET /all-beers
# GET /all-beers.json
  def allbeers # rename me
    @beers = Beer.where(id: TriedBeer.where.not(profile: current_user.profile))
    render json: @beers
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
    # @beer = current_user.profile.beer.find(params[:id])
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
    # @beer = Beer.find(current_user.profile.beer.params[:id])
    # @beer = current_user.profile.beers
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
                              :notes, :rating, :drink_again, :photo) if params[:beers]
    end
end
