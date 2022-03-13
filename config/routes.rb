Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions:      "admin/sessions",
    registrations: "admin/registrations"
  }

  devise_for :customers, skip: [:passwords], controllers: {
    sessions:       "public/sessions",
    registrations:  "public/registrations"
  }

  namespace :admin do
    root to: "homes#top", as: 'top'

    resources :items,         only:   [:index, :show, :create, :update, :new, :edit]
    resources :genres,        only:   [:index, :edit, :create, :update]
    resources :customers,     except: [:index, :show, :edit,   :update]
    resources :orders,        only:   [:index, :show, :update]
    resources :order_details, only:   [:update]
  end

  scope module: :public do
    root to: "homes#top"

    get     "customers/my_page"       => "customers#show", as:"my_page"
    get     "customers/information"   => "customers#edit"
    get     "/about"                  => "homes#about"
    get     "/cart_items"             => "cart_items#index"
    patch   "/customers/sign_out"     => "customers#out", as: "out"
    delete  "/cart_items"             => "cart_items#destroy_all"
    post    "/orders/log"             => "orders#log"

    resources :shipping_addresses,   only:   [:index, :edit, :create, :update, :destroy]
    resources :customers,   except: [:new,   :create]
    resources :items,       only:   [:index, :show]
    resources :cart_items,  only:   [:index, :create, :update, :destroy] do
      collection do
        delete 'destroy_all'
      end
    end
    resources :customers,   only:   [:show, :edit, :update] do
      collection do
        get 'quit'
      end
      collection do
        patch 'out'
      end
    end
    resources :orders,      only:   [:new, :create, :index, :show] do
      collection do
        get  'thanks'
      end
    end
  end
end
