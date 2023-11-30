Rails.application.routes.draw do
  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions',
    registrations: 'usuarios/registrations'
  }

  devise_scope :usuario do
    root to: 'usuarios/sessions#new'
    get '/usuarios/sign_out', to: 'usuarios/sessions#destroy', as: :logout_usuario_session
  end

  authenticate :usuario do
    resources :clientes do
      resources :llamados, only: [:index, :show, :new, :create, :edit, :update]
      delete '/llamados/:id', to: 'llamados#destroy', as: 'cliente_llamado'
      

    end
    delete '/clientes/:id', to: 'clientes#destroy', as: 'eliminar_cliente'
    get 'pdf/generate', to: 'pdf#generate', as: 'generate_pdf'
  end
  
  # Resto de las rutas de tu aplicación
end



