class ProformasController < ApplicationController
  respond_to :html, :js
  
  def index
    @proformas = Proforma.all
  end

  def show
    @proforma = Proforma.find(params[:id])
    
    #supplier y cliente de la proforma
    @supplier = Supplier.find(@proforma.supplier_id)
    @cliente = Cliente.find(@proforma.cliente_id)

    #articulos asociados al supplier actual
    @articles = @supplier.articles

    #generar una nueva relacion article-proforma
    @articleproforma = ArticleProforma.new
    #obtener todos los articulos de la proforma actual
    @articles_proforma = ArticleProforma.where(proforma_id: @proforma.id)
    

    @nombre_proforma = "factura-#{@proforma.id}"

    respond_to do |format|
      format.html 
      format.pdf do
        render template: 'proformas/factura', 
        pdf: @nombre_proforma
        #save_to_file: Rails.root.join('public', 'proformas', "proforma-#{@proforma.id}.pdf")
      end
    end
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
    @proforma = Proforma.find(params[:id])
    if @proforma.update_attributes(proforma_params)
      redirect_to(proforma_path(@proforma))
    else 
      flash[:notice] = @proforma.errors.full_messages.to_sentence
      render('edit')
    end 
  end 

  def delete
     @proforma = Proforma.find(params[:id])
  end

  def destroy
    @proforma = Proforma.find(params[:id])
    @proforma.destroy
    redirect_to(proformas_path)
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
    params.require(:proforma).permit(:codigo, :supplier_id, :cliente_id,:peso_bruto, :peso_neto, :volumen, :embalaje, :observacion, :tipo_flete, :flete,:total) 
  end 

end
