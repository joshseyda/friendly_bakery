# Pavilion Bakery
![landing]("https://github.com/joshseyda/friendly_bakery/blob/master/public/photos/storefront_2.png")
![hands]("https://github.com/joshseyda/friendly_bakery/blob/master/public/photos/banner.jpg")
![main_page]("https://github.com/joshseyda/friendly_bakery/blob/master/public/photos/bakery1.png")
![custom_page]("https://github.com/joshseyda/friendly_bakery/blob/master/public/photos/bakery.png")
## Motivation
###### This is a basic, full-stack web page created with Ruby, Sinatra, and the SendGrid API on the backend, Materialize, HTML5, CSS3, and JavaScript on the front end. SendGrid is sending out automated emails to customers.
## Build Status
###### The bakery page is fleshed out, but there is more customization to be done with SendGrid in order to make a more dynamic email UI. 
## Code Style
###### The different product pages are rendered dynamically from objects created in the app.rb file, and all of the erb views are rendered within a pre-styled layout file.
## Technology Used
###### This page relies on Sinatra with Ruby to run the server on localhost and manage all of the routes. The SendGrid API is used to send out an email template of the existing items offered by the bakery. Sinatra-contrib gem is used to dynamically reload the server without having to stop it at each savepoint in development. 
## Code Example
###### Below is an example of the dynamic rendering on pageload.
```html.erb
<h4 class="blue-grey-text text-lighten-4 center">We offer a wide variety of cake and pie options to suit your sweet tooth!</h4>
<% @cakes.each do |elem| %>
    <div class="col s12 m4">
      <div class="card medium">
        <div class="card-image">
            <img src="<%= elem.src %>">
            </div>
                <div class="card-content">
                    <h6><%= elem.name %></h6>
                    <p><%= elem.description %></p>
                    <p><%=elem.price %></p>
                </div>
            </div>
        </div>
<% end %>
```
## How To Use
###### Scroll and click around the page and sign up for an email!
## Credit
###### The user interface was built with [Google Materialize](http://materializecss.com/) Images are used courtesy of [Pexels](https://www.pexels.com/) the fonts used are from [Google Fonts](https://fonts.google.com/). 
## Licence
##### MIT License

###### Copyright &copy; [2018] [Joshua Seyda]

###### Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

###### The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

###### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


