class LlamadosController < ApplicationController
  before_action :set_cliente
  before_action :set_llamado, only: [:show, :edit, :update, :destroy]

  # GET /clientes/:cliente_id/llamados
  def index
    @llamados = @cliente.llamados
  end

  # GET /clientes/:cliente_id/llamados/:id
  def show
  end

  # GET /clientes/:cliente_id/llamados/new
  def new
    @llamado = @cliente.llamados.build
  end

  # POST /clientes/:cliente_id/llamados
  def create
    @llamado = @cliente.llamados.build(llamado_params)

    if @llamado.save
      redirect_to cliente_llamados_path(@cliente), notice: "¡LLAMADO GUARDADO EXITOSAMENTE!"

    else
    
      render :new
    end
  end

  # GET /clientes/:cliente_id/llamados/:id/edit
  def edit
  end

  # PATCH/PUT /clientes/:cliente_id/llamados/:id
  def update
    if @llamado.update(llamado_params)
      redirect_to cliente_llamado_path(@cliente, @llamado), notice: "LLAMADO ACTUALIZADO EXITOSAMENTE"
    else
      render :edit
    end
  end

  # DELETE /clientes/:cliente_id/llamados/:id
  def destroy
    @llamado.destroy
    redirect_to cliente_llamados_path(@cliente), notice: "LLAMADO ELIMINADO EXITOSAMENTE"
  end
  

  private

  def set_cliente
    @cliente = Cliente.find(params[:cliente_id])
  end

  def set_llamado
    @llamado = @cliente.llamados.find(params[:id])
  end

  def llamado_params
    params.require(:llamado).permit(:motivo, :fecha)
  end
end

