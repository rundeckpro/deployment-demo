require './app.rb'
require 'rack/test'

describe App do
  include Rack::Test::Methods
  let(:app) { App.new }

  context "GET to /testval" do

    it "returns status 200 OK" do
      get '/testval'
      expect(last_response.status).to eq 200
    end

    it "returns expected value" do
      get '/testval'
      expect(last_response.body).to eq "1"
    end

  end

  context "GET to /" do

    it "returns status 200 OK" do
      get '/'
      expect(last_response.status).to eq 200
      expect(last_response.body).to include("Rundeck")
    end
  end

end
