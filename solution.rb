require 'sinatra'

get '/' do
  erb :index
end

post '/' do

  @value = params[:value]
  if @value != ""
    if @value.upcase == @value
      @resp = "Ahhh si, manzanas!"
    else  @value.downcase == @value
    @resp = "Habla más duro mijito"
    end
  else
    @resp = ""
  end
  erb :index
end
