class CryptomonaiesController < ApplicationController
  before_action :set_cryptomonaie, only: %i[ show edit update destroy ]

  # GET /cryptomonaies or /cryptomonaies.json
  def index
    @cryptomonaies = Cryptomonaie.all
  end

  # GET /cryptomonaies/1 or /cryptomonaies/1.json
  def show
  end

  # GET /cryptomonaies/new
  def new
    @cryptomonaie = Cryptomonaie.new
  end

  # GET /cryptomonaies/1/edit
  def edit
  end

  # POST /cryptomonaies or /cryptomonaies.json
  def create
    @cryptomonaie = Cryptomonaie.new(cryptomonaie_params)

    respond_to do |format|
      if @cryptomonaie.save
        format.html { redirect_to @cryptomonaie, notice: "Cryptomonaie was successfully created." }
        format.json { render :show, status: :created, location: @cryptomonaie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cryptomonaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryptomonaies/1 or /cryptomonaies/1.json
  def update
    respond_to do |format|
      if @cryptomonaie.update(cryptomonaie_params)
        format.html { redirect_to @cryptomonaie, notice: "Cryptomonaie was successfully updated." }
        format.json { render :show, status: :ok, location: @cryptomonaie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cryptomonaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryptomonaies/1 or /cryptomonaies/1.json
  def destroy
    @cryptomonaie.destroy
    respond_to do |format|
      format.html { redirect_to cryptomonaies_url, notice: "Cryptomonaie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryptomonaie
      @cryptomonaie = Cryptomonaie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cryptomonaie_params
      params.require(:cryptomonaie).permit(:name, :crypto_dispo, :cours_crypto)
    end
end
