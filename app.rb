require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_phrase = PigLatinizer.new
    pig_phrasr.piglatinize(params[:phrase])
  end
end
