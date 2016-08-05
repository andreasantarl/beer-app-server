class BeersController < ProtectedController
  before_action :set_beer, only: [:show, :update, :destroy]

  # GET /beers
  # GET /beers.json
  def index
    @beers = current_user.profile.beers.order(updated_at: :desc)

    render json: @beers
  end

# GET /all-beers
# GET /all-beers.json
  def allbeers # rename me
    @beers = Beer.where.not(id: current_user.profile.beers).order(updated_at: :desc)

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
    @beer = current_user.profile.beers.build(beer_params)
    
    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  # PATCH/PUT /beers/1.json
  def update
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
      @beer = current_user.profile.beers.find(params[:id])
    end

    def beer_params
      params.require(:beers).permit(:beer_name, :company_name, :beer_style, :abv,
                              :appearance, :aroma, :palate, :flavor, :packaging,
                              :notes, :rating, :drink_again, :photo) if params[:beers]
    end
end
