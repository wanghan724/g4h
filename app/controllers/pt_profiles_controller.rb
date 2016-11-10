class PtProfilesController < ApplicationController
  before_action :set_pt_profile, only: [:show, :edit, :update, :destroy]

  # GET /pt_profiles
  # GET /pt_profiles.json
  def index
    @pt_profiles = PtProfile.all
  end

  # GET /pt_profiles/1
  # GET /pt_profiles/1.json
  def show
  end

  # GET /pt_profiles/new
  def new
    @pt_profile = PtProfile.new
  end

  # GET /pt_profiles/1/edit
  def edit
  end

  # POST /pt_profiles
  # POST /pt_profiles.json
  def create
    @pt_profile = PtProfile.new(pt_profile_params)

    respond_to do |format|
      if @pt_profile.save
        format.html { redirect_to @pt_profile, notice: 'Pt profile was successfully created.' }
        format.json { render :show, status: :created, location: @pt_profile }
      else
        format.html { render :new }
        format.json { render json: @pt_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt_profiles/1
  # PATCH/PUT /pt_profiles/1.json
  def update
    respond_to do |format|
      if @pt_profile.update(pt_profile_params)
        format.html { redirect_to @pt_profile, notice: 'Pt profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_profile }
      else
        format.html { render :edit }
        format.json { render json: @pt_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt_profiles/1
  # DELETE /pt_profiles/1.json
  def destroy
    @pt_profile.destroy
    respond_to do |format|
      format.html { redirect_to pt_profiles_url, notice: 'Pt profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_profile
      @pt_profile = PtProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_profile_params
      params.require(:pt_profile).permit(:first_name, :last_name, :age, :gender, :qualifications, :email, :contact_number, :about)
    end
end
