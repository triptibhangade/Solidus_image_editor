Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :templates do
      member do
        post :clone
      end
    end
    
    # delete 'templates/:template_id/template_frames/:id', to: "template_frames#destroy", as: :template_frame

    resources :products do 
      member do 
        post :get_taxons
      end
    end
  end

end
