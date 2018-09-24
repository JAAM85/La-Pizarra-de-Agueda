class ActividadsController < ApplicationController
  
  def show   
    
  end

  def create
    Actividad.create(:tema => params[:actividad][:tema], 
                        :descripcion => params[:actividad][:descripcion],
                        :titulo => params[:actividad][:titulo],
                        :imagen => params[:actividad][:titulo],
                        :link => params[:actividad][:link])

    redirect_to curso_path(Asignatura.find(params[:control][:asignatura]).curso)
  end

  def new
    @actividad = Actividad.new
    @asignaturas = Asignatura.all
    @temas = Tema.all
  end
end
