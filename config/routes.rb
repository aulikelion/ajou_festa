Rails.application.routes.draw do
    
  resources :abouts
  resources :neons
  get 'boothinfo/index'
  get 'boothinfo/map'
  
  resources :booths
  resources :timetables
  
  root 'home#index'
  
  get 'home/lineup'
  get 'home/timetable'
  get 'home/booth'
  get 'home/map'
  get 'home/neon'
  get 'home/index'
  get 'home/tt'
  
  devise_for :administrators #관리자 로그인 관련 설정입니다.
  
  get 'home/administrator_sitemap'
  
  get 'admin' => 'home#administrator_sitemap' #root 주소 뒤에 /admin만 붙여도 관리자 페이지 갈 수 있게 해놨어요.

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
