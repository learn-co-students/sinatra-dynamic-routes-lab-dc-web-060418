require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    @multiple_number = params[:number].to_i
    @string = params[:phrase]
    "#{@string * @multiple_number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op_num1 = params[:number1].to_i
    @op_num2 = params[:number2].to_i
    @op = params[:operation]
    if @op == "add"
      "#{@op_num1 + @op_num2}"
    elsif @op == "subtract"
      "#{@op_num1-@op_num2}"
    elsif @op == "multiply"
      "#{@op_num1*@op_num2}"
    elsif @op == "divide" && @op_num2 != 0
      "#{@op_num1/@op_num2}"
    end
  end



end
