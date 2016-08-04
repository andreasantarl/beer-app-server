class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:show, :update, :create, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if current_user
      render json: @profile
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    if current_user
      @profile = Profile.new(profile_params)
      @profile.user_id = current_user.id
    end

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if current_user
      @profile = Profile.find(params[:id])
    end

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    if current_user
      @profile.destroy
    end
    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profiles).permit(:first_name, :last_name, :username,
      :biography, :preferences, :favorites, :profile_private, :photo, :user_id)
    end
end
