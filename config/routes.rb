Rails.application.routes.draw do
  root :to => 'contact#index'
  match "/contact/new_contact",  :to => "contact#new_contact", :via => [:get]
  match "/contacts",             :to => "contact#create_contact", :via => [:post]
  match "/contact/show_contacts", :to => "contact#show_contacts", :via => [:get]
  match "/contact/delete_contact", :to => "contact#delete_contact", :via => [:post]
end
