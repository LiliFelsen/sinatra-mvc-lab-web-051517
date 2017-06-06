require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin_sentence = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :display
  end

end
