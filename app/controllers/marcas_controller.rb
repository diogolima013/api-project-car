class MarcasController < ApplicationController

  def index 
    @marcas = Marca.all
    render json: @marcas
  end

end
