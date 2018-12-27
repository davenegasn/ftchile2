class ClientesController < ApplicationController

  before_action :confirm_logged_in
  respond_to :html, :js

  
  def index
    @clientes = Cliente.sorted
    @page_title = "Clientes"
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
    @cliente = Cliente.new
  end

  def create 
    @cliente = Cliente.create(cliente_params)
    if @cliente.save
      redirect_to(clientes_path)
    else 
      flash[:notice] = @cliente.errors.full_messages.to_sentence
      redirect_to(clientes_path(@cliente))
    end 
  end 

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])
    if @cliente.update_attributes(cliente_params)
      redirect_to(clientes_path(@cliente))
    else 
      render(edit)
    end 
  end 

  def delete
    @cliente = Cliente.find(params[:id])
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
    redirect_to(clientes_path)
  end 

  def get_ajax_cliente
    client_id = params[:id]
    # do something with some_parameter and return the results

    @cliente = Cliente.find(client_id)
    respond_to do |format|
      format.html
      format.json {render json: @cliente}
    end
  end

  private
  def cliente_params
    params.require(:cliente).permit(:nombre, :apellido_paterno, :apellido_materno, :direccion, :telefono, :email, :comuna)
  end 

end
