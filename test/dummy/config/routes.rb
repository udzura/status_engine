Rails.application.routes.draw do
  mount StatusEngine::Engine => "/status_engine"
end
