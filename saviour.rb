# cookie
<div class="row">
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/macaron.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
<div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/macaron.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/macaron.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>
# muffin
<div class="row">
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/corn_muff.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
<div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/cherry_muff.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/blueb_muff.png">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>
# cupcake
<div class="row">
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/choc_cup.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
<div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/velv_cup.jpeg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
    <div class="col s12 m4">
      <div class="card">
        <div class="card-image">
            <img src="/photos/purp_cup.jpg">
            </div>
                <div class="card-content">
                    <p>I am a very simple card. I am good at containing small bits of information.
                    I am convenient because I require little markup to use effectively.</p>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>

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
    @cupcake_1 = Cupcake.new("Pretzel", "/photos/pretzel_cup.jpeg", "$3")
    @cupcake_2 = Cupcake.new("Peanut Butter Swirl", "/photos/pb_swirl_cup.jpeg", "$3")
    @cupcake_3 = Cupcake.new("Fruit Tart", "/photos/fruit_tart_cup.jpeg", "$3")
    @cupcake_4 = Cupcake.new("Pop Corn", "/photos/pop_corn_cup.jpeg", "$3")
    @cupcake_5 = Cupcake.new("Lavender", "/photos/small_purple_cup.jpg", "$3")
    @cupcake_6 = Cupcake.new("Classic Chocolate", "/photos/small_choc_cup.jpeg", "$3")
    @cupcakes = [@cupcake_1, @cupcake_2, @cupcake_3, @cupcake_4, @cupcake_5, @cupcake_6]
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
    @cake_1 = Cake.new("Floral Cake", "/photos/flower_cake.jpeg", "$150")
    @cake_2 = Cake.new("Fruit Tart", "/photos/fruit_tart_cake.jpeg", "$80") 
    @cake_3 = Cake.new("Fruit & Nut Cake", "/photos/fruit_nut_cake.jpeg", "$75")
    @cake_4 = Cake.new("Coffee Cheese Cake", "/photos/coffee_cheese_cake.jpeg", "$75")
    @cake_5 = Cake.new("Naked Vanilla Cake", "/photos/cake.jpeg", "$70")
    @cake_6 = Cake.new("Fruit Pies", "/photos/piefilling.jpg", "$60")
    @cakes = [@cake_1, @cake_2, @cake_3, @cake_4, @cake_5, @cake_6]
erb :custom
end
get '/beverages' do
    @bev_1 = Beverage.new("Espresso", "/photos/espresso_machine.jpeg", "$3")
    @bev_2 = Beverage.new("Café latté", "/photos/latte_art.jpeg", "$4")
    @bev_3 = Beverage.new("Assorted Teas", "/photos/tea_bags.jpg", "$3")
    @beverages = [@bev_1, @bev_2, @bev_3]
    erb :beverages
end

get '/contact' do
    erb :contact
end

post '/contact' do 
    from = Email.new(email: 'test@example.com')
    to = Email.new(email: 'jseyda@gmail.com')
    subject = 'My Bakery Order'
    content = Content.new(type: 'text/html', value: '<table>

        <tr>

               <td align="center"><img src="/photos/bundt_cake.jpeg"></td>

        </tr>

        <tr>

               <td>
               <p>Thank you for requesting our Catalog, below you will see a list of products with price. For high resolution photos see our website.</p>
               <ul>
                    <li>Cookies</li>
                    <li>Chocolate Chip $2</li>
                    <li>Linzer Tart $3</li>
                    <li>Macaron $4</li>
                </ul>
                <ul>
                    <li>Muffins $3</li>
                    <li>Cherry </li>
                    <li>Corn </li>
                    <li>Blueberry </li>
                </ul>
                <ul>
                    <li>Cakes</li>
                    <li>Floral Cake $150</li>
                    <li>Fruit Tart $80</li>
                    <li>Fruit & Nut Cake $75</li>
                    <li><Coffee Cheese Cake $75</li>
                    <li>Naked Vanilla Cake $70</li>
                </ul>
                <ul>
                    <li>Cupcakes $3</li>
                    <li>Pretzel</li>
                    <li>Peanut Butter Swirl</li>
                    <li>Fruit Tart</li>
               </ul>
               </td>

        </tr>

        <tr>

               <td align="center">Pavilion Bakery</td>

        </tr>

</table>')
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    erb :email_sent
end

<div class="row">
  <div class="col s12 m6 center offset-m3">
  <h4>We are a small, family run, vegan bakery. We work with local farmers to source only seasonal and organic raw ingredients to give you the best pastries possible.</h4>
  </div>
</div>

    
