class ProformasController < ApplicationController
  
  respond_to :html, :js
  
  def index
    @proformas = Proforma.all
  end

  def show
  end

  def new
    @articles = Article.all
    @proforma = Proforma.new
  end

  def create
    @proforma = Proforma.new(proforma_params)
    if @proforma.save
      redirect_to(proformas_path)
    else 
      flash[:notice] = @proforma.errors.full_messages.to_sentence
      render('new')
    end 

  end 

  def edit
    @proforma = Proforma.find(params[:id])
  end

  def update
  end 

  def delete
  end

  def destroy
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
  def proforma_params
    params.require(:proforma).permit(:nombre_cliente, :apellidos_cliente, :direccion_cliente, :comuna_cliente, :nombre_proveedor, :direccion_proveedor,:comuna_proveedor, :nombre_producto, :cantidad_producto, :subtotal_producto)
  end 

end
