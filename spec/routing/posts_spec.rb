require 'rails_helper'

RSpec.describe '/posts routes'  do
  it  'routes to posts#index'  do
    expect(get '/api/posts').to  route_to(controller: 'api/posts',  action:  'index') 
   end
end