BookLove::Application.routes.draw do
  
  devise_for :users

  resources :authors do
    resources :books
  end

  root :to => "home#index"

  get '/test/:author', to: 'books#author_test'

  #make sure that a params[:author] value is sent in the POST data.
  post '/test/post', to: 'books#author_test'


end

# new_user_session GET    /users/sign_in(.:format)                     devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                     devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                    devise/sessions#destroy
#            user_password POST   /users/password(.:format)                    devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)               devise/passwords#edit
#                          PUT    /users/password(.:format)                    devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                      devise/registrations#cancel
#        user_registration POST   /users(.:format)                             devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                     devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                        devise/registrations#edit
#                          PUT    /users(.:format)                             devise/registrations#update
#                          DELETE /users(.:format)                             devise/registrations#destroy
#             author_books GET    /authors/:author_id/books(.:format)          books#index
#                          POST   /authors/:author_id/books(.:format)          books#create
#          new_author_book GET    /authors/:author_id/books/new(.:format)      books#new
#         edit_author_book GET    /authors/:author_id/books/:id/edit(.:format) books#edit
#              author_book GET    /authors/:author_id/books/:id(.:format)      books#show
#                          PUT    /authors/:author_id/books/:id(.:format)      books#update
#                          DELETE /authors/:author_id/books/:id(.:format)      books#destroy
#                  authors GET    /authors(.:format)                           authors#index
#                          POST   /authors(.:format)                           authors#create
#               new_author GET    /authors/new(.:format)                       authors#new
#              edit_author GET    /authors/:id/edit(.:format)                  authors#edit
#                   author GET    /authors/:id(.:format)                       authors#show
#                          PUT    /authors/:id(.:format)                       authors#update
#                          DELETE /authors/:id(.:format)                       authors#destroy
#                     root        /                                            home#index