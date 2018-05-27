require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
require_relative 'class.rb'
include SendGrid
require 'sinatra/base'

class MyApp < Sinatra::Base
  get "/" do
    "hello world"
  end
end

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
    @cupcake_1 = Cupcake.new("Pretzel", "/photos/pretzel_cup.jpeg", "$3", "Salty and sweet, the best of both worlds.")
    @cupcake_2 = Cupcake.new("Peanut Butter Swirl", "/photos/pb_swirl_cup.jpeg", "$3", "Rich and Decadant, sugar free peanut butter mixed with dark chocolate.")
    @cupcake_3 = Cupcake.new("Fruit Tart", "/photos/fruit_tart_cup.jpeg", "$3", "A small handheld french pasty of sublime decadance.")
    @cupcake_4 = Cupcake.new("Strawberry Short Cake", "/photos/strawb_short_cup.jpg", "$3", "Bright and fresh for a summer evening.")
    @cupcake_5 = Cupcake.new("Cherry Chocolate Chip", "/photos/cherry_choc_cup.jpg", "$3", "Robust, sweet, and sour. Tart cherries paired with our darkest chocolate.")
    @cupcake_6 = Cupcake.new("Caipirinha", "/photos/caipirinha_cupcake.jpg", "$3", "Brazillian flavor of lime and cocounut.")
    @cupcakes = [@cupcake_1, @cupcake_2, @cupcake_3, @cupcake_4, @cupcake_5, @cupcake_6]
erb :cupcakes
end

get '/cookies' do
    @cookie_1 = Cookie.new("Macaron", "/photos/macaron.jpeg", "$4", "Etherial merenge and almond based cookies with lucious jam filling.")
    @cookie_2 = Cookie.new("Linzer Tart", "photos/linzer_b_cook.jpeg", "$3", "Crisp cookies with tart jam  and powdered sugar.")
    @cookie_3 = Cookie.new("Chocolate Chip", "/photos/choc_chip_cook.jpeg", "$2", "Classic cookies fresh from your mom's kitchen.")
    @cookie_4 = Cookie.new("Chocolate Macaroon", "/photos/choc_macaroon_cook.jpg", "$4", "Coconut cookies dunked in chocolate and topped with shredded coconut.")
    @cookie_5 = Cookie.new("Ginger Star", "/photos/ginger_star_cook.jpeg", "$2", "Spiced cookies with a dense cake-like mouthfeel")
    @cookie_6 = Cookie.new("Lemon Curd", "/photos/lemon_curd_cookie.jpg", "$3", "Sweet and sour creamy filling in a simple cookie.")
    @cookie_7 = Cookie.new("Peanut Butter Chocolate Mousse", "/photos/pb_choc_mousse.jpg", "$3", "Fluffy and decadent cookie with all the good stuff.")
    @cookie_8 = Cookie.new("Sugar Cookie", "photos/sugar_cook.jpeg", "$2", "Nobody's favorite cookie, but sometimes you just need a netral sweet.")
    @cookie_9 = Cookie.new("Double Chocolate", "/photos/double_choc_cook.jpeg", "$3", "2 X the chocolate!")
    @cookies = [@cookie_1, @cookie_2, @cookie_3, @cookie_4, @cookie_5, @cookie_6, @cookie_7, @cookie_8, @cookie_9]
erb :cookies
end

get '/muffins' do
    @muffin_2 = Muffin.new("Corn Muffin", "/photos/corn_muff.jpeg", "$3", "Our clasic homestyle cornbread muffin.")
    @muffin_1 = Muffin.new("Cherry Muffin", "/photos/cherry_muff.jpeg", "$3", "Tart and sweet, perfect for a less sweeet breakfast.")
    @muffin_3 = Muffin.new("Blueberry Muffin", "/photos/blueb_muff.png", "$3", "Packed with antioxidants, blueberries have been shown to increase neurogenisis.")
    @muffin_4 = Muffin.new("Red Currant Muffin", "/photos/currant_muff.jpg", "$3", "Fresh winter berries bring this muffin to the top of our customer's requests.")
    @muffin_5 = Muffin.new("Lemon Poppy Muffin", "/photos/lemon_poppy_muff.jpg", "$3", "Bright and nutty, a chef favorite.")
    @muffin_6 = Muffin.new("Blackberry Muffin", "/photos/other_blueb_muff.jpg", "$3", "Everyone's favorite segmented berry...")
    @muffins = [@muffin_1, @muffin_2, @muffin_3, @muffin_4, @muffin_5, @muffin_6]
erb :muffins
end

get '/custom' do
    @cake_1 = Cake.new("Floral Cake", "/photos/flower_cake.jpeg", "$150", "Spring flowers bring this cake to life!")
    @cake_2 = Cake.new("Fruit Tart", "/photos/fruit_tart_cake.jpeg", "$80", "Rich pastry creame, perfectly formed shell and market resh berries take it over the edge.") 
    @cake_3 = Cake.new("Fruit & Nut Cake", "/photos/fruit_nut_cake.jpeg", "$75", "Fruit and nuts, the best tasting part of a tree!")
    @cake_4 = Cake.new("Coffee Cheese Cake", "/photos/coffee_cheese_cake.jpeg", "$75", "Coffie cake style crumbles on top of a cheesecake base.")
    @cake_5 = Cake.new("Naked Vanilla Cake", "/photos/cake.jpeg", "$70", "Made popular by Pastry Chef Christina Tossi, these cakes look as beautiful as they are delicious.")
    @cake_6 = Cake.new("Fruit Pies", "/photos/piefilling.jpg", "$60", "We make the crust, you pick the filling, and we're both happy!")
    @cakes = [@cake_1, @cake_2, @cake_3, @cake_4, @cake_5, @cake_6]
erb :custom
end
get '/beverages' do
    @bev_1 = Beverage.new("Espresso", "/photos/espresso_machine.jpeg", "$3", "Highly pressurized, swift extraction of finely ground coffee.")
    @bev_2 = Beverage.new("Café latté", "/photos/latte_art.jpeg", "$4", "Espresso with steamed milk, whipped into a funny shape.")
    @bev_3 = Beverage.new("Assorted Teas", "/photos/tea_bags.jpg", "$3","We have Sencha, Oolong, Pu-Er, and herbal caffeine free varieties.")
    @beverages = [@bev_1, @bev_2, @bev_3]
    erb :beverages
end

get '/contact' do
    erb :contact
end

get '/bread' do
    @bread_1 = Bread.new("Sourdough", "/photos/sourdough_bread.jpg", "$5", "Lacto-fermented and naturally leavened.")
    @bread_2 = Bread.new("Poppy Chalka", "/photos/polish_poppy_chalka.jpg", "$7", "Polish braided bread with poppy seeds.")
    @bread_3 = Bread.new("Fresh Rolls", "/photos/fresh_roll_brad.jpg", "$1", "Baked fresh every morning.")
    @bread = [@bread_1, @bread_2, @bread_3]
    erb :bread
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
                    <li> Cookies</li>
                    <li>Chocolate Chip $2</li>
                    <li>Linzer Tart $3</li>
                    <li>Macaron $4</li>
                    <li>Chocolate Macaroon $4 </li>
                    <li>Ginger Star $2 </li>
                    <li>Lemon Curd $3 </li>
                    <li>Peanut Butter </li>
                    <li>Chocolate Mousse $3 </li>
                    <li>Sugar Cookie $2 </li>
                    <li>Double Chocolate $3</li>
                </ul>
                <ul>
                    <li>Muffins $3</li>
                    <li>Cherry </li>
                    <li>Corn </li>
                    <li>Blueberry </li>
                    <li>Red Currant Muffin </li>
                    <li>Lemon Poppy Muffin</li>
                    <li>Blackberry Muffin</li>
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
                    <li>Strawberry Short Cake </li>
                    <li>Cherry Chocolate Chip </li>
                    <li>Caipirinha</li>
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