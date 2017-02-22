class BusquedasController < ApplicationController
  before_action :set_busqueda, only: [:show, :edit, :update, :destroy]

  # GET /busquedas
  # GET /busquedas.json
  def index
    @busquedas = Busqueda.all
  end

  # GET /busquedas/1
  # GET /busquedas/1.json
  def show
  end

  # GET /busquedas/new
  def new
    @busqueda = Busqueda.new
  end

  # GET /busquedas/1/edit
  def edit
  end

  # POST /busquedas
  # POST /busquedas.json
  def create
    @busqueda = Busqueda.new(busqueda_params)

    respond_to do |format|
      if @busqueda.save
        format.html { redirect_to @busqueda, notice: 'Busqueda was successfully created.' }
        format.json { render :show, status: :created, location: @busqueda }
      else
        format.html { render :new }
        format.json { render json: @busqueda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /busquedas/1
  # PATCH/PUT /busquedas/1.json
  def update
    respond_to do |format|
      if @busqueda.update(busqueda_params)
        format.html { redirect_to @busqueda, notice: 'Busqueda was successfully updated.' }
        format.json { render :show, status: :ok, location: @busqueda }
      else
        format.html { render :edit }
        format.json { render json: @busqueda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /busquedas/1
  # DELETE /busquedas/1.json
  def destroy
    @busqueda.destroy
    respond_to do |format|
      format.html { redirect_to busquedas_url, notice: 'Busqueda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_busqueda
      @busqueda = Busqueda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def busqueda_params
      params.require(:busqueda).permit(:IdBusqueda, :Dni, :Codigo_Paciente, :PACIENTES_IdPacientes, :PACIENTES_CLIENTES_IdCliente, :PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador, :CLIENTES_IdCliente, :CLIENTES_ADMINISTRADOR_IdAdministrador)
    end
end
