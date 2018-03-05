# README

**Disclaimer**
This web-app's purpose is to help me deepen my skills on the Ruby on Rails framework, as well as develop an idea that I've discussed with a friend over drinks. This is a work in progress, feel free to play around with the app, but keep in mind that a lot of things don't work as intended. I'm very aware of that and I'm doing my best to fix bugs and implement features.

**What is Plateform? And how does it work?**
It's a meal-sharing web app that allows users to to publish dinners. When a user publishes a dinner, he/she specifies what he/she will be cooking, location, time, categories (f.e. vegetarian), how many guest does can he/she host and how much he is going to charge each guest to help out with the cost of groceries.

The intention is that people (this was originally concieved for uni-students, but whoever) can have low-cost meals. Both parties benefit either by making cooking feel more worth it, or by having a cheaper but reliable alternative than eating out. Also you'll enjoy (hopefully) of good company. Sounds simple enough, right? Yeah, not if you're building the app:

**Current Features**
 * Authentication with Google/Facebook/Twittter's API. Multiple authentication providors can be linked to the same account, so you can sign in with Fb, link your Twitter and sign in with Twitter the next time you log in.  
 * Users can create dinners, select categories, set a price that they want to charge the guests that join their dinner
 * Search functionality for dinners. You can search a city, or a place, and you will get the events that are near that place in a 20 km radius, you can also drag the Google map widget and that will set the boundaries and make the search within that bounding box
 * When users sign up, they are assigned an awesome pizza avatar that I found on Dribbble, Users can  go into their account settings and change their profile avatars and also upload images to any dinners that they host
 * Geolocation and integration with Google Maps so that each time a user creates a new dinner, it's automatically geocoded with the geocoder gem and set as a marker on the map thanks to JSON
 * Users as well as dinners can be reviewed through comments
 * Once a user joins a dinner, he/she will be sent to a payment page for the amount that the host specified. Once the payment is validated, and it has been verified that everything is is order (There is at least one place left and the current user is not already a guest), then the two actions take place in one atomic operation 
 * Confirmation email when you sign up using Devise confirmable (Although right now, you have a 400 day grace period, so no rush)

**Features not yet implemented that need to get done**
 * The user hosting the dinner should receive payments when other users make reservations for their dinner (As of now, we just charge the user making the reservation but we don't actually give money to the host)
 * Dinners should only be reviewable only if you were a guest at said dinner and users should only be reviewable if you shared a dinner with said person (As host or as guest)
 * Users should be able to chat with each other so they can ask each other questions (Ultimately on ActionCable so that it can be real time, but not super imperative)
 * Maybe... require users to register a card before they can create dinners or make a reservation, it would be more practical to create a Stript custumer and just use the card saved on Stripe, instead of making them insert their card info each time
 * Payments with Braintree
 * Narrow the search even more by selecting specific categories. 
 * Ability to update and delete avatars 
 * Add a gallery for dinner images
 * Tests


**Some of the skills and tools this app has helped me practice**
* Dealing with Google Maps API (using gmaps.js)
* Using Omniauth to deal with Facebook's, Twitter's and Google's API for authentication
* Polymorphic associations for reviews (users and dinners)
* JavaScript libraries such as Selectize.js, SweetAlert.js
* Using Stripe's API to deal with payments
* Transactions and how to make it so that if the payment doesn't come through, or the dinner guest is not saved, nothing gets recorded to the db
* ActionMailer for mailing user's welcome message and confirming their e-mail
* Bootstrap
* Using seeds to set up initial data


Any suggestions, complaints, ideas, words of encouragement, pull requests, or comments let me know, I'll be glad to chat.
