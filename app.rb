require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num*num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    "#{params[:phrase] * num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = params.values.join(" ")
    "#{phrase}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      operator = "+"
    when "subtract"
      operator = "-"
    when "multiply"
      operator = "*"
    when "divide"
      operator = "/"
    end
    operations = params[:number1] + operator + params[:number2]
    result = eval operations
    "#{result}"
  end

end