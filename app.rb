require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    user_name = params[:name]
    reversed_name = user_name.reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    squared = (number * number).to_s
    "#{squared}"
  end

  get "/say/:number/:phrase" do
    string = ""
    num = params[:number].to_i
    phrase = params[:phrase] + " "
    num.times do
      string << phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      answer = params["number1"].to_i + params["number2"].to_i
    elsif params[:operation] == "subtract"
      answer = params["number1"].to_i - params["number2"].to_i
    elsif params[:operation] == "multiply"
      answer = params["number1"].to_i * params["number2"].to_i
    elsif params[:operation] == "divide"
      answer = params["number1"].to_i / params["number2"].to_i
    end
    answer.to_s
  end

end
