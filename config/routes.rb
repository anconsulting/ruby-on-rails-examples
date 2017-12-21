Rails.application.routes.draw do
  resources :inquiries

  # PDF出力
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'

end
