class ArmrequestsController < ApplicationController
  before_action :set_armrequest, only: %i[ show edit update destroy ]

  # GET /armrequests or /armrequests.json
  def index
    @armrequests = Armrequest.all.where('return_status = ?', 'Unreturned')
  end

  # GET /armrequests/1 or /armrequests/1.json
  def show
  end

  # GET /armrequests/new
  def new
    @armrequest = Armrequest.new
  end

  # GET /armrequests/1/edit
  def edit
  end

  # POST /armrequests or /armrequests.json
  def create
    @armrequest = Armrequest.new(armrequest_params)

    respond_to do |format|
      if @armrequest.save
        format.html { redirect_to @armrequest, notice: "Armrequest was successfully created." }
        format.json { render :show, status: :created, location: @armrequest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @armrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armrequests/1 or /armrequests/1.json
  def update
    respond_to do |format|
      if @armrequest.update(armrequest_params)
        format.html { redirect_to @armrequest, notice: "Armrequest was successfully updated." }
        format.json { render :show, status: :ok, location: @armrequest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @armrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armrequests/1 or /armrequests/1.json
  def destroy
    @armrequest.destroy
    respond_to do |format|
      format.html { redirect_to armrequests_url, notice: "Armrequest was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def approvals
    @armrequests = Armrequest.all
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_armrequest
      @armrequest = Armrequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def armrequest_params
      params.require(:armrequest).permit(:personnel_id, :armtype, :arm_id, :return_status, :request_date, :return_date, :avatar, :approve)
    end
end
