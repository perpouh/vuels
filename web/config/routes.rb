Rails.application.routes.draw do

  constraints subdomain: '' do
    get '/', to: "pages#index"
  end
  constraints subdomain: 'store' do
    scope module: :store do
      get '/', to: "pages#index"
    end
  end
  constraints subdomain: 'worker' do
    scope module: :worker do
      get '/', to: "pages#index"
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      constraints subdomain: '' do
        root to: "pages#index"
      end

      constraints subdomain: 'store' do
        namespace :store do
          root to: "pages#index"
        end
      end

      constraints subdomain: 'worker' do
        namespace :worker do
          root to: "pages#index"
        end
      end
    end
  end
end
