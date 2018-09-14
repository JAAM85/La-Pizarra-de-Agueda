class AsignaturasController < ApplicationController
  
  def show
    @curso = Curso.find(Asignatura.find(params[:id]).curso)
    @asignatura = Asignatura.find(params[:id])
  end
end
