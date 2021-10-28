require 'rails_helper'

RSpec.describe '/ping request', type: :request  do
  it  'returns a success response'  do
    get '/api/ping'
    expect(response.status).to eq(200)
    expect(response).to have_http_status(:ok) 
   end
end