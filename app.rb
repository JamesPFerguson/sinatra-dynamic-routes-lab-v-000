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

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @big_phrase = ""
    @number.to_i.times do
      @big_phrase += @phrase
    end
    "#{@big_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"

end
