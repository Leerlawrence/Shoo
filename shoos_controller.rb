require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/shoes.rb')

get '/shoe/new' do
  erb(:new)
 end 

 post '/shoe' do
#save the order, create shoe
  # binding.pry
  
  @shoe = Shoe.new(params)
  @shoe.save()
  erb(:create)
end

  get '/shoe' do 
    @shoes = shoe.all()
    # binding.pry
    erb(:index)
   end 
