require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    "Rundeck Deployment Test App update"
  end

  get '/testval' do
    "1"
  end


end
