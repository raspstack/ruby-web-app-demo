require 'sinatra'
require 'socket'

get '/' do
  "#{Socket.gethostname}\n"
end
