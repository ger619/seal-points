class SealsController < ApplicationController
  before_action :set_seal, only: %i[show edit update destroy]

  # GET /seals or /seals.json
  def index
    @seals = Seal.all
  end

  # GET /seals/1 or /seals/1.json
  def show; end

  # GET /seals/new
  def new
    @seal = Seal.new
  end

  # GET /seals/1/edit
  def edit; end

  # POST /seals or /seals.json
  def create
    @seal = Seal.new(seal_params)

    respond_to do |format|
      if @seal.save
        format.html { redirect_to seal_url(@seal), notice: 'Seal was successfully created.' }
        format.json { render :show, status: :created, location: @seal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seals/1 or /seals/1.json
  def update
    respond_to do |format|
      if @seal.update(seal_params)
        format.html { redirect_to seal_url(@seal), notice: 'Seal was successfully updated.' }
        format.json { render :show, status: :ok, location: @seal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seals/1 or /seals/1.json
  def destroy
    @seal.destroy!

    respond_to do |format|
      format.html { redirect_to seals_url, notice: 'Seal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_seal
    @seal = Seal.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def seal_params
    params.require(:seal).permit(:id_number, :first_name, :middle_name, :sir_name, :date_of_birth, :gender, :country, :county, :phone_number,
                                 :email)
  end
end
