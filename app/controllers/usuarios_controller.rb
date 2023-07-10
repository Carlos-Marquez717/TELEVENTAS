class UsuariosController < ApplicationController
    def llamados
        @usuario = Usuario.find(params[:usuario_id])
        @llamados = @usuario.llamados
    end
end
