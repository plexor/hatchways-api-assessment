require 'rails_helper'

RSpec.describe '/posts request', type: :request  do
  it  'throws error if tag parameter is missing'  do
    get '/api/posts'
    expect(response).to have_http_status(400) 
    expect(response.body).to eq( "{\"error\":\"Tags parameter is required\"}")
   end

   it  'returns posts with by tag provided'  do
    get '/api/posts?tag=tech'
    expect(response.status).to eq(200)
   end

   it  'checks for valid sortBy parameter'  do
    get '/api/posts?tag=tech&sortBy=likes'
    expect(response.status).to eq(200)
   end

   it  'checks for valid direction parameter'  do
    get '/api/posts?tag=tech&sortBy=likes&direction=asc'
    expect(response.status).to eq(200)
   end

end