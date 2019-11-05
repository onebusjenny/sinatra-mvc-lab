require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    
    erb :user_input
  end
  
  post '/piglatinize' do
   user_word = params[:user_feedback]
   @pig_latinized_word = Piglatinizer.new(params[:user_feedback])
   
   erb :pig_latin
  end
  
  
  
  
  
  
  
  
end