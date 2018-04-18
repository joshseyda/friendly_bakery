require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
require_relative 'class.rb'
include SendGrid

get '/' do
    erb :index, layout: :layout_land 
end

get '/home' do
    erb :home, layout: :layout_home
end

get '/about'do
    erb :about
end

get '/cupcakes' do
    @cupcake_2 = Cupcake.new("Lavender", "/photos/purp_cup.jpg", "$3")
    @cupcake_1 = Cupcake.new("Red Velvet", "/photos/velv_cup.jpeg", "$3")
    @cupcake_3 = Cupcake.new("Classic Chocolate", "/photos/choc_cup.jpeg", "$3")
    @cupcakes = [@cupcake_1, @cupcake_2, @cupcake_3]
erb :cupcakes
end

get '/cookies' do
    @cookie_1 = Cookie.new("Macaron", "/photos/macaron.jpeg", "$4")
    @cookie_2 = Cookie.new("Linzer Tart", "photos/linzer_b_cook.jpeg", "$3")
    @cookie_3 = Cookie.new("Chocolate Chip", "/photos/choc_chip_cook.jpeg", "$2")
    @cookies = [@cookie_1, @cookie_2, @cookie_3]
erb :cookies
end

get '/muffins' do
    @muffin_2 = Muffin.new("Corn Muffin", "/photos/corn_muff.jpeg", "$3")
    @muffin_1 = Muffin.new("Cherry Muffin", "/photos/cherry_muff.jpeg", "$3")
    @muffin_3 = Muffin.new("Blueberry Muffin", "/photos/blueb_muff.png", "$3")
    @muffins = [@muffin_1, @muffin_2, @muffin_3]
erb :muffins
end

get '/custom' do
    @cake_1 = Cake.new()
    @cake_2 = Cake.new() 
    @cake_3 = Cake.new()
    @cake_4 = Cake.new()
    @cake_5 = Cake.new()
    @cake_6 = Cake.new()
    @cake_7 = Cake.new()
    @cake_8 = Cake.new()
    @cake_9 = Cake.new()
    @cakes = [@cake_1, @cake_2, @cake_3, @cake_4, @cake_5, @cake_6, @cake_7, @cake_8, @cake_9]
    erb :custom
end

get '/contact' do
    erb :contact
end

post '/contact' do 
    from = Email.new(email: 'test@example.com')
    to = Email.new(email: 'jseyda@gmail.com')
    subject = 'My Bakery Order'
    content = Content.new(type: 'text/plain', value: 'catalog of goods')
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    erb :email_sent
end