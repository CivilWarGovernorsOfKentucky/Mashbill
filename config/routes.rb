Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


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
  get   '/error_file', :to => 'users#error_file', :as => :error_file

  resources :entities   
  resources :documents
  resources :annotations
  resources :deeds

end
