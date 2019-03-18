class ArticlesController < ApplicationController

  before_action :confirm_logged_in

  
  def index
    
    @suppliers = Supplier.all
    @articles = Article.all

    if params[:term] && params[:supplier]
      supplier = Supplier.find( params[:supplier] )
      #obtener el operador + o -
      operator = params[:operator]
      #obtener el porcentaje
      percentage = params[:term].to_i
      #el porcentaje en decimal
      percentage = percentage.to_f / 100
      supplier.articles.each do |article|
        #el valor original del articulo en entero
        originalValue = article.precio.to_i
        #el valor a aumentar o reducir
        increase = (percentage * originalValue).to_i 
        #determinar la operacion segun el operador numerico
        if operator == "-"
          val = originalValue - increase
        else 
          val = originalValue + increase
        end 

        #actualizar al valor final 
        article.update({:precio => val})

      end 
    elsif params[:supplier] #ejecutar filtro para articulos de x proveedor
      @supplier = Supplier.find( params[:supplier] )
      @articles = @supplier.articles
    else #todos los artículos
      @suppliers = Supplier.all
    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to(articles_path)
    else 
      flash[:notice] = @article.errors.full_messages.to_sentence
      render('new')
    end 
  end 

  def edit
     @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to(article_path(@article))
    else 
      flash[:notice] = @article.errors.full_messages.to_sentence
      render('edit')
    end 
  end 

  def delete
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to(articles_path)
  end 

  

  private
  def article_params
    params.require(:article).permit(:supplier_id, :nombre, :precio, :euro, :dolar, :descripcion,:term)
  end 

end
