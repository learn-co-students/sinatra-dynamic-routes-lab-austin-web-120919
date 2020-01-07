require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @provided_name = params[:name]
    "#{@provided_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared_num = @num ** 2
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    result =''
    @num = params[:number].to_i
    @entered_phrase = params[:phrase]
    @num.times{result += @entered_phrase}
    result    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end