class CursosController < ApplicationController
  def new
  end

  def create
  end
  
  def show
    @curso = Curso.find(params[:id])
  end
end
