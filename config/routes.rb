StatusEngine::Engine.routes.draw do
  get "status", :to => "status#index"
end
