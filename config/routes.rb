Rails.application.routes.draw do
  root "home#index"
  devise_for :admins

  authenticate :admin do
    mount Translator::App, at: "/translator"
  end
end
