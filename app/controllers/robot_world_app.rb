require_relative '../models/robot.rb'
require_relative '../models/robot_decorator.rb'


class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/' do
    erb :dashboard
  end

  get '/robots' do
    @robots = Robot.all
    erb :index
  end

  post '/robots' do
    robot = Robot.new(params[:robot])
    robot.save
    redirect '/robots'
    erb :layout
  end

  get '/robots/new' do
    erb :new_robot
  end

  get '/robots/:id' do
    robot = Robot.find(params[:id])
    @robot = RobotDecorator.new(robot)
    erb :show
  end

  get '/robots/:id/edit' do
    @robot = Robot.find(params[:id])
    erb :edit
  end

  put '/robots/:id' do |id|
    Robot.update(id.to_i, params[:robot])
    redirect "/robots/#{id}"
  end

  delete '/robots/:id' do |id|
   Robot.destroy(id.to_i)
   redirect '/robots'
 end
end
