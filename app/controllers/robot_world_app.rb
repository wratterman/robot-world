require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/robots' do
    erb :index
  end
end
