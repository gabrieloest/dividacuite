class DividasController < ApplicationController
  before_action :set_divida, only: [:show, :edit, :update, :destroy]

  # GET /dividas
  # GET /dividas.json
  def index
    @dividas = Divida.all
  end

  # GET /dividas/1
  # GET /dividas/1.json
  def show
  end

  # GET /dividas/new
  def new
    @divida = Divida.new
  end

  # GET /dividas/1/edit
  def edit
  end

  # POST /dividas
  # POST /dividas.json
  def create
    @divida = Divida.new(divida_params)

    respond_to do |format|
      if @divida.save
        format.html { redirect_to @divida, notice: 'Divida was successfully created.' }
        format.json { render :show, status: :created, location: @divida }
      else
        format.html { render :new }
        format.json { render json: @divida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dividas/1
  # PATCH/PUT /dividas/1.json
  def update
    respond_to do |format|
      if @divida.update(divida_params)
        format.html { redirect_to @divida, notice: 'Divida was successfully updated.' }
        format.json { render :show, status: :ok, location: @divida }
      else
        format.html { render :edit }
        format.json { render json: @divida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dividas/1
  # DELETE /dividas/1.json
  def destroy
    @divida.destroy
    respond_to do |format|
      format.html { redirect_to dividas_url, notice: 'Divida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divida
      @divida = Divida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divida_params
      params.require(:divida).permit(:empresa_id, :cliente_id, :valor, :flag)
    end
end
