class ListingProfilesController < ApplicationController
  before_action :set_listing_profile, only: [:show, :edit, :update, :destroy]

  # GET /listing_profiles
  # GET /listing_profiles.json
  def index
    @listing_profiles = ListingProfile.all
  end

  # GET /listing_profiles/1
  # GET /listing_profiles/1.json
  def show
  end

  # GET /listing_profiles/new
  def new
    @listing_profile = ListingProfile.new
  end

  # GET /listing_profiles/1/edit
  def edit
  end

  # POST /listing_profiles
  # POST /listing_profiles.json
  def create
    @listing_profile = ListingProfile.new(listing_profile_params)

    respond_to do |format|
      if @listing_profile.save
        format.html { redirect_to @listing_profile, notice: 'Listing profile was successfully created.' }
        format.json { render :show, status: :created, location: @listing_profile }
      else
        format.html { render :new }
        format.json { render json: @listing_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listing_profiles/1
  # PATCH/PUT /listing_profiles/1.json
  def update
    respond_to do |format|
      if @listing_profile.update(listing_profile_params)
        format.html { redirect_to @listing_profile, notice: 'Listing profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing_profile }
      else
        format.html { render :edit }
        format.json { render json: @listing_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_profiles/1
  # DELETE /listing_profiles/1.json
  def destroy
    @listing_profile.destroy
    respond_to do |format|
      format.html { redirect_to listing_profiles_url, notice: 'Listing profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_profile
      @listing_profile = ListingProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_profile_params
      params.require(:listing_profile).permit(:name, :photos, :address, :description, :amenities, :directions_and_parking, :terms_and_conditions, :number_of_people, :area, :Peak_price, :off_peak_price)
    end
end
