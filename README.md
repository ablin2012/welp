# Welp README

![welp logo](welp_logo_background.png)

[Welp] (https://welpadam.herokuapp.com/#/) is a full stack clone of Yelp.com, a social media website for browsing and reviewing local businesses.

# Technologies

* Backend: Ruby on Rails
* Frontend: React/Redux
* Database: PostgreSQL
* APIs: Maps JavaScript API
* Image Hosting: Active Storage and AWS S3

# Features

### User Auth
* Visitors can sign up to be a user or login as a demo user
* Certain pages can only be accessed when logged in, or when logged out
* Login errors will display and won't persist

### Create, Read, Update, and Delete Reviews
* Logged in users can write reviews for a business and the creation of a review will redirect a user to the business show page
* The rating radio buttons are customized using a combination of background images and hover event listeners
    * I used local state to allow for the background image to change dynamically
```
<fieldset className="rating-selector">
   <ul className={`stars ${this.state.numStars}`}>
         <li className="star">
            <div className="star-wrapper">
               <input className="star-input" type="radio" name="rating" onClick={this.handleClick('one', 1)} 
                     onMouseEnter={this.handleHover('one')} onMouseLeave={this.handleUnhover()}/>
            </div>
         </li>
         <li className="star">
            <div className="star-wrapper">
               <input className="star-input" type="radio" name="rating" onClick={this.handleClick('two', 2)} 
                     onMouseEnter={this.handleHover('two')} onMouseLeave={this.handleUnhover()}/>
            </div>
         </li>
         <li className="star">
            <div className="star-wrapper">
               <input className="star-input" type="radio" name="rating" onClick={this.handleClick('three', 3)}
                     onMouseEnter={this.handleHover('three')} onMouseLeave={this.handleUnhover()}/>
            </div>
         </li>
         <li className="star">
            <div className="star-wrapper">
               <input className="star-input" type="radio" name="rating" onClick={this.handleClick('four', 4)}
                     onMouseEnter={this.handleHover('four')} onMouseLeave={this.handleUnhover()}/>
            </div>
         </li>
         <li className="star">
            <div className="star-wrapper five">
               <input className="star-input" type="radio" name="rating" onClick={this.handleClick('five', 5)}
                     onMouseEnter={this.handleHover('five')} onMouseLeave={this.handleUnhover()}/>
            </div>
         </li>
   </ul>
   {radioText}
</fieldset>
```
* All reviews for a business are displayed on the show page
* Reviews created by the logged in user will display and update and delete button which work as expected

### Search and Filters
* User can search for a business by name, category, price, and location (only SF for now)
* The search is done in steps:
   1. First, pulling all the businesses that can be rendered on the search pages map
   2. Then, filtering those businesses by name, category, and/or price
   3. Finally, filtering based on a specified city name
* The search page also has a price filter which will add a price filter to your current search
* There are also quick filters on the splash page that give a user possible categories they can search by
   * Clicking on them will redirect to a url that contains a query string that the search page checks for and then updates filters based on its presence
```
def index
   businesses = params[:bounds] ? Business.in_bounds(params[:bounds]) : Business.all
   if params[:name] != ''
      businesses = businesses.where("LOWER(name) LIKE LOWER(?) 
                                       OR LOWER(category) LIKE LOWER(?)
                                       OR LOWER(price) LIKE LOWER(?)", 
                                       "%" + params[:name] + "%", "%" + params[:name] + "%", params[:name])
   end
   if params[:location] != ''
      businesses = businesses.where("LOWER(city) LIKE LOWER(?)",
                                       "%" + params[:location] + "%")
   end
   if params[:price] != ''
      businesses = businesses.where("price LIKE ?",
                                       params[:price])
   end
   @businesses = businesses
   render :index
end

```