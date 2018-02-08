require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase'
    @number = params[:number]
    @phrase = params[:phrase]
    @big_phrase = ""
    @number.times do
      @big_phrase += @phrase
    end
    "#{@big_phrase}"
  end

end
