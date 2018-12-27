class SuppliersController < ApplicationController

  before_action :confirm_logged_in
  respond_to :html, :js
  
  def index
    @suppliers = Supplier.all 
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to(suppliers_path)
    else 
      flash[:notice] = @supplier.errors.full_messages.to_sentence
      render('new')
    end 
  end 

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(supplier_params)
      redirect_to(suppliers_path(@supplier))
    else 
      flash[:notice] = @supplier.errors.full_messages.to_sentence
      render(edit)
    end
  end 

  def delete
    @supplier = Supplier.find(params[:id])
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to(suppliers_path)
  end 

  def get_ajax_supplier
    supplier_id = params[:id]
    # do something with some_parameter and return the results

    @supplier = Supplier.find(supplier_id)
    respond_to do |format|
      format.html
      format.json {render json: @supplier}
    end
  end

  private
  def supplier_params
    params.require(:supplier).permit(:nombre, :direccion, :telefono, :email, :logo, :descripcion, :image, :ubicacion)
  end 

end
