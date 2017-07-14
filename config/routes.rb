Rails.application.routes.draw do
  mount Translator::App, at: "/translator"
end
