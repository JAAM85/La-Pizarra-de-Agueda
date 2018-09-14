class TrabajocasaController < ApplicationController
  
  def show
    @curso = Curso.find(params[:id])
    @trabajos = Trabajocasa.joins("INNER JOIN asignaturas ON asignaturas.id = trabajocasas.asignatura").where("asignaturas.curso=?",@curso.id)
  end
end
