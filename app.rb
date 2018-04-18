require 'sinatra'
require 'sinatra/reloader'
# require 'SendGrid'

get '/' do
    erb :index, layout: :layout_land 
end

get '/home' do
    erb :home, layout: :layout_home
end

get '/cupcakes' do
    erb :cupcakes
end

get '/cookies' do
    erb :cookies
end

get '/muffins' do
    erb :muffins
end

get '/custom' do
    erb :custom
end

# post '/mail' erb
#     @email = params[:email]
#     from = Email.new(email: @email)
#     to = Email.new(email: 'jseyda@gmail.com')
#     subject = 'My Bakery Order'
#     content = Content.new(type: 'text/plain', value: @order)
#     mail = Mail.new(from, subject, to, content)

#     sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
#     response = sg.client.mail._('send').post(request_body: mail.to_json)
#     if response.status_code == 401
#         error_hash = JSON.parse(response.body)
#         @errors = error_hash["errors"]
#     end 
# end