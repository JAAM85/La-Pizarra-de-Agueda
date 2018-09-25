class ActividadsController < ApplicationController
  
  def show   
    
  end

  def create
    Actividad.create(:tema => params[:actividad][:tema], 
                        :descripcion => params[:actividad][:descripcion],
                        :titulo => params[:actividad][:titulo],
                        :imagen => params[:actividad][:imagen],
                        :link => params[:actividad][:link])

    flash[:success] = "Se ha creado la nueva actividad."                    
    redirect_to adminactividades_path
  end

  def update
    actividad = Actividad.find(params[:id])
    actividad.update(:tema => params[:actividad][:tema], 
      :descripcion => params[:actividad][:descripcion],
      :titulo => params[:actividad][:titulo],
      :imagen => params[:actividad][:imagen],
      :link => params[:actividad][:link])

    flash[:success] = "Se ha actualizado la actividad."
    
    redirect_to adminactividades_path
  end


  def new
    @actividad = Actividad.new
    @asignaturas = Asignatura.all
    @temas = Tema.all
  end
end
