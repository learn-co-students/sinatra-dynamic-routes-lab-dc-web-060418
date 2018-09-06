require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    sq = num * num
    sq.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    str = params[:phrase]
    ret = ""

    num.times {
      ret += str
    }

    ret
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      val = num1 + num2
    when "subtract"
      val = num1 - num2
    when "multiply"
      val = num1 * num2
    when "divide"
      val = num1 / num2
    end

    val.to_s
  end
end
