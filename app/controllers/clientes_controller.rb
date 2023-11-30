class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  def index
    @clientes = Cliente.all
  
    if params[:search].present?
      @clientes = @clientes.where("nombre LIKE :search OR email LIKE :search", search: "%#{params[:search]}%")
    end
  
    @clientes = @clientes.paginate(page: params[:page], per_page: 10)
  end
  

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      flash[:notice] = 'CLIENTE CREADO EXITOSAMENTE'
      redirect_to clientes_path
    else
      flash.now[:alert] = 'NO SE PUDO CREAR CLIENTE'
      render :new
    end
  end

  def edit
  end

  def update
    if @cliente.update(cliente_params)
      redirect_to cliente_path(@cliente), notice: 'CLIENTE ACTUALIZADO CORRECTAMENTE'
    else
      render :edit
    end
  end

  def destroy
    # Encuentra y elimina los registros de llamados asociados al cliente
    Llamado.where(cliente_id: @cliente.id).destroy_all
  
    # Elimina el cliente
    @cliente.destroy
  
    redirect_to clientes_path, notice: 'CLIENTE ELIMINADO EXITOSAMENTE'
  end
  

  def show
    @llamado = @cliente.llamados.build
  end

  private

  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  def cliente_params
    params.require(:cliente).permit(:nombre, :email, :numero_telefonico)
  end
end
