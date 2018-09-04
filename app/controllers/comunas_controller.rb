class ComunasController < ApplicationController

  before_action :confirm_logged_in
  respond_to :html, :js
  
  def index
  	@comunas = Comuna.sorted
  end

  def show
    @comuna = Comuna.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @comuna}
    end
  end 

  def new
  	@comuna = Comuna.new
  end

  def create
  	@comuna = Comuna.new(comuna_params)
  	if @comuna.save
      redirect_to(comunas_path)
    else 
      render('new')
    end 
  end 

  def edit
  end

  private
  def comuna_params
    params.require(:comuna).permit(:nombre)
  end 

end
