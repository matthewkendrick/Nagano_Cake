Rails.application.routes.draw do

  devise_for :admin, skip: [:regidtration, :passwords], controllers: {
    sessions:      'admin/sessions',
    registrations: 'admin/registrations'
  }

  devise_for :customers, skip: [:passwords], controllers: {
    sessions:       'public/sessions',
    registrations:  'public/registrations'
  }

  root to: 'public/homes#top' 
  get '/about'  => 'public/homes#about'
  get '/admin'  => 'admin/homes#top'


  namespace :admin do
    root to: 'homes#top', as: 'top'
    
    resources :items,         expect: [:destroy]
    resources :genres,        only:   [:index, :edit, :create, :update]
    resources :customers,     only:   [:index, :show, :edit,   :update]
    resources :orders,        only:   [:index, :show, :update]
    resources :order_details, only:   [:update]
  end

  scope module: :public do
    get     '/about'           => 'homes#about'
    get     '/customers/quit'  => 'customers#quit'
    patch   '/customers/out'   => 'customers#out'
    delete  '/cart_items'      => 'cart_items#destroy_all'

    resources :items,       only:   [:index, :show]
    resources :customers,   only:   [:show,  :edit,   :update]
    resources :deliveries,  expect: [:new, :show]
    resources :orders,      expect: [:edit,  :update, :destroy] do
      collection do
        get   'thanks'
        post  'log'
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
