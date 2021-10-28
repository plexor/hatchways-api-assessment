require 'rails_helper'

RSpec.describe '/ping routes'  do
  it  'routes to pings#index'  do
    expect(get '/api/ping').to  route_to(controller: 'api/pings',  action:  'index') 
   end

end