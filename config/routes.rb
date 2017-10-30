Rails.application.routes.draw do
  resources :race_descriptions
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :relationships

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'users#dashboard'
  get   '/dashboard' => 'users#dashboard', as: :dashboard
  get   '/annotations/document/:cwgk_id', :to => 'annotations#bycwgkid', :as => :bycwgkid
  get   '/identify_annotation/:annotation_id', :to => 'annotations#identify_annotation', :as => :identify_annotation
  get   '/associate_entity_to_annotation/:entity_id/:annotation_id', :to => 'annotations#associate_entity_to_annotation', :as => :associate_entity_to_annotation
  get   '/define_relationships/:cwgk_id', :to => 'relationships#define', :as => :define_relationships
  get   '/add_to_relationship', :to => 'relationships#add', :as => :add_to_relationship
  get   '/entities/show/:id', :to => 'entities#show',:as => :show_entity
  get   '/entities/edit_bio/:id', :to => 'entities#edit_bio', :as => :edit_entity_bio
  get   '/entities/show_bio/:id', :to => 'entities#show_bio', :as => :show_entity_bio
  get   '/entities/show_documents/:id', :to => 'entities#show_documents', :as => :show_entity_documents
  get   '/entities/show_metadata/:id', :to => 'entities#show_metadata', :as => :show_entity_metadata  
  get   '/entities/show_viz/:id', :to => 'entities#show_viz', :as => :show_entity_viz  
  get   '/entities/data/:id', :to => 'entities#data', :as => :show_entity_data  
  post   '/documents/mark_complete/:id', :to => 'documents#mark_complete', :as => :mark_complete
  post   '/documents/needs_review/:id', :to => 'documents#needs_review', :as => :needs_review
  post   '/documents/reviewed/:id', :to => 'documents#reviewed', :as => :reviewed
  get   '/documents/search', :to => 'documents#search'
  get   '/documents/search_by_name', :to => 'documents#search_by_name'
  get   '/entities/search', :to => 'entities#search'
  get   '/deeds/list', :to => 'deeds#list'
  get   '/annotations/search_identify_annotation', :to => 'annotations#search_identify_annotation'
  get   '/statistics', :to => 'users#statistics', :as => :statistics

  resources :entities   
  resources :documents
  resources :annotations
  resources :deeds
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
