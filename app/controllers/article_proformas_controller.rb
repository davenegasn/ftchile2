class ArticleProformasController < ApplicationController
	

	def create
		@articleproforma = ArticleProforma.new(article_proforma_params)
		
	    if @articleproforma.save
	      redirect_to(proforma_path(params[:article_proforma][:proforma_id]))
	    else 
	      flash[:notice] = @articleproforma.errors.full_messages.to_sentence
	      render('new')
	    end 


	end 

	private
	def article_proforma_params
		params.require(:article_proforma).permit(:article_id, :proforma_id, :quantity, :subtotal)
	end 
end

