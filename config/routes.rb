MuseumApp::Application.routes.draw do
  root "paintings#index"
    resources :paintings
end
