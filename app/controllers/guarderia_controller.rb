class GuarderiaController < ApplicationController
  before_action :set_guarderium, only: [:show, :edit, :update, :destroy]

  # GET /guarderia
  # GET /guarderia.json
  def index
    @guarderia = Guarderium.all
  end

  # GET /guarderia/1
  # GET /guarderia/1.json
  def show
  end

  # GET /guarderia/new
  def new
    @guarderium = Guarderium.new
  end

  # GET /guarderia/1/edit
  def edit
  end

  # POST /guarderia
  # POST /guarderia.json
  def create
    @guarderium = Guarderium.new(guarderium_params)

    respond_to do |format|
      if @guarderium.save
        format.html { redirect_to @guarderium, notice: 'Guarderium was successfully created.' }
        format.json { render :show, status: :created, location: @guarderium }
      else
        format.html { render :new }
        format.json { render json: @guarderium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guarderia/1
  # PATCH/PUT /guarderia/1.json
  def update
    respond_to do |format|
      if @guarderium.update(guarderium_params)
        format.html { redirect_to @guarderium, notice: 'Guarderium was successfully updated.' }
        format.json { render :show, status: :ok, location: @guarderium }
      else
        format.html { render :edit }
        format.json { render json: @guarderium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guarderia/1
  # DELETE /guarderia/1.json
  def destroy
    @guarderium.destroy
    respond_to do |format|
      format.html { redirect_to guarderia_url, notice: 'Guarderium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guarderium
      @guarderium = Guarderium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guarderium_params
      params.require(:guarderium).permit(:IdGuarderia, :Nombre_Cliente, :Nombre_Paciente, :Codigo_Paciente, :Tiempo_Estadia, :BUSQUEDA_IdBusqueda, :BUSQUEDA_PACIENTES_IdPacientes, :BUSQUEDA_PACIENTES_CLIENTES_IdCliente, :BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador, :BUSQUEDA_CLIENTES_IdCliente, :BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador)
    end
end
