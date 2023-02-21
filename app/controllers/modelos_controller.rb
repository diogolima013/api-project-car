class ModelosController < ApplicationController

  def index 
    @modelos = Modelo.all
    render json: @modelos
  end

  def show
    @modelo = Modelo.find(params[:id])
    render json: @modelo
  end
end
