ActionController::Routing::Routes.draw do |map|
  map.resources :doc, :collection => {:listpage => :get}
  map.namespace :admin do |admin|
    admin.resources :categories do |category|
      category.resources :products
    end
    admin.resources :shops, :member => { :set_status => :put, :set_recomend => :put}
   admin.resources :home, :collection => {:all_products => :get}
  end
  map.resources :users do |user|
    user.resources :shops do |shop|
      shop.resources :products
    end
  end
  map.doc '/doc', :controller => 'doc'
  map.admin '/admin', :controller => 'admin/home'
  map.userhome '/home', :controller => 'users', :action => 'home'
  map.home '/', :controller => 'home'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
