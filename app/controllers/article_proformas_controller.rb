class ArticleProformasController < ApplicationController
	def create
		#Calcular el subtotal antes de ingresar a la bd
		currentArticleId = params[:article_proforma][:article_id] 
		currentArticleqty = params[:article_proforma][:quantity] 
		article = Article.find(currentArticleId)
		subtotal = article.precio.to_i * currentArticleqty.to_i
		params[:article_proforma][:subtotal] = subtotal

		@articleproforma = ArticleProforma.new(params[:article_proforma].permit(:article_id, :proforma_id, :quantity, :subtotal))
		
	    if @articleproforma.save
	      redirect_to(proforma_path(params[:article_proforma][:proforma_id]))
	    else 
	      flash[:notice] = @articleproforma.errors.full_messages.to_sentence
	      render('new')
	    end 
	end  

	def delete
		@articleproforma = ArticleProforma.find(params[:id])
	end 

	def destroy
		@articleproforma = ArticleProforma.find(params[:id])
		@articleproforma.destroy
		redirect_to(proforma_path(@articleproforma.proforma_id))
	end 

	private
	def article_proforma_params
		
		params.require(:article_proforma).permit(:article_id, :proforma_id, :quantity, :subtotal)
	end 
end

