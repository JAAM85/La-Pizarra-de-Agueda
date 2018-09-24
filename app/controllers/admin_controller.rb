class AdminController < ApplicationController

    def temas
        @temas = Tema.all
    end

    def actividades
        @actividades = Actividad.all
    end

    def render_temas
        @tema = Tema.find(params[:tema])
        @asignaturas = Asignatura.all
        respond_to do |format|
            format.html { render :partial => "admin/partials/editTema", locals: {tema: @tema, asignaturas: @asignaturas } }
        end
    end

    def edit_tema
    end


    

end