class VOwnerProfilesController < ApplicationController
  before_action :set_v_owner_profile, only: [:show, :edit, :update, :destroy]

  # GET /v_owner_profiles
  # GET /v_owner_profiles.json
  def index
    @v_owner_profiles = VOwnerProfile.all
  end

  # GET /v_owner_profiles/1
  # GET /v_owner_profiles/1.json
  def show
  end

  # GET /v_owner_profiles/new
  def new
    @v_owner_profile = VOwnerProfile.new
  end

  # GET /v_owner_profiles/1/edit
  def edit
  end

  # POST /v_owner_profiles
  # POST /v_owner_profiles.json
  def create
    @v_owner_profile = VOwnerProfile.new(v_owner_profile_params)

    respond_to do |format|
      if @v_owner_profile.save
        format.html { redirect_to @v_owner_profile, notice: 'V owner profile was successfully created.' }
        format.json { render :show, status: :created, location: @v_owner_profile }
      else
        format.html { render :new }
        format.json { render json: @v_owner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_owner_profiles/1
  # PATCH/PUT /v_owner_profiles/1.json
  def update
    respond_to do |format|
      if @v_owner_profile.update(v_owner_profile_params)
        format.html { redirect_to @v_owner_profile, notice: 'V owner profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_owner_profile }
      else
        format.html { render :edit }
        format.json { render json: @v_owner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_owner_profiles/1
  # DELETE /v_owner_profiles/1.json
  def destroy
    @v_owner_profile.destroy
    respond_to do |format|
      format.html { redirect_to v_owner_profiles_url, notice: 'V owner profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_owner_profile
      @v_owner_profile = VOwnerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_owner_profile_params
      params.require(:v_owner_profile).permit(:first_name, :last_name, :email, :contact_number, :about)
    end
end
