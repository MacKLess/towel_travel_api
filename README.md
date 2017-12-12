# Towel Travel API

### _Epicodus Project in Ruby on Rails, December 11, 2017_

### By L. Devin MacKrell

## Description

_This is an API for a travel site._

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.
* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser
* **To give an account admin privileges:**
  * In the project root run ```rails c```
  * Then run:
    ```ruby
    User.find_by(email: "[account email address]").update(admin: true)
    ```
  * The account will now have admin access to the app.

## Specifications

* Users  
  * All users may GET reviews about travel destinations. INDEX
  * All users may POST reviews about travel destinations. NEW
  * All users can GET reviews by location or planet. SEARCH
  * All users can see most popular travel destinations by number of reviews. SORT by REVIEW #s
  * All users can see most popular travel destinations by overall rating. RATING
  * Users can look up random destinations for fun. RANDOM
* Current_Users
  * Users can PUT and DELETE reviews that they wrote. (REQUIRE USER_NAME --> Issue with faker reviews?)

<!--
## Known Bugs:

* _When updating a product to "Featured," if there are no other featured products AJAX will not display the "Featured" section without a page refresh._
* _Products updated to "On Sale" will not display in the "On Sale" section of the homepage without a page refresh._
* _If cart is empty, refresh is required to display change of item from Raincheck to Cart._ -->

## Support and contact details

_Please contact [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap
* Devise

### License

Copyright (c) 2017 **L. Devin MacKrell**

*This software is licensed under the MIT license.*
