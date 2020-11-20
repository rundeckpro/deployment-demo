require 'sinatra/base'
require 'net/http'
require 'json'

class App < Sinatra::Base



  get '/' do
    "Rundeck Deployment Test App<br />Hi KubeCon!"
  end

  get '/testval' do
    "1"
  end

  get '/dockerhub_tags' do
    content_type 'application/json'
    if params['image'] == nil || params['image'] == ""
      halt 400, "param 'image' required"
    end
    image = params['image']
    uri = URI("https://registry.hub.docker.com/v2/repositories/#{params['image']}/tags")
    imageJsonString = Net::HTTP.get(uri)
    #print "#{imageJsonString}"
    imageJson = JSON.parse(imageJsonString)
    ret = []
    imageJson["results"].each do |i|
       ret.push(image + ":" + i['name'])
    end
    #imageJson["results"]["images"].each do |i|
    #  print "#{params['image']}:#{i['name']}<br>"
    #end
    return ret.to_json
  end



end
