# README

**Disclaimer**
This web-app's purpose is to help me deepen my skills on the Ruby on Rails framework, as well as develop an idea that I've discussed with a friend over drinks. This is a work in progress, feel free to play around with the app, but keep in mind that a lot of things don't work as intended. I'm very aware of that and I'm doing my best to fix bugs and implement features.

**What is Plateform? And how does it work**
It's a meal-sharing web app that allows users to to publish dinners. When a user publishes a dinner, he/she specifies what he/she will be cooking, location, time, categories (f.e. vegetarian), how many guest does can he/she host and how much he is going to charge each guest to help out with the cost of groceries.

The intention is that people (this was originally concieved for uni-students, but whoever) can have low-cost meals. Both parties benefit either by making cooking feel more worth it, or by having a cheaper but reliable alternative than eating out. Also you'll enjoy (hopefully) of good company. Sounds simple enough, right? Yeah, not if you're building the app:

**Summary of Features**
 *Authentication with Google/Facebook/Twittter's API (not available in production though)
 *Users can create dinners, select categories, set a price
 *Users can join other people's dinners (in progress)
 *Search functionality for dinners
 *Users can upload their avatars and images to the dinners that they host
 *Geolocation and integration with Google Maps so that dinners search results as markers on the map
 *Users as well as dinners can be reviewed through comments
 *Users as well as dinners can be reviewed through stars (Coming soon)
 *Once a user joins a dinner, he/she will be sent to a payment page for the amount that the host specified. (Coming soon)
 *Users will be able to send messages to other users (Coming soon)

**Some of the skills and tools this app has helped me practice**
*Dealing with Google Maps API (granted, I cheated a bit and used gmaps.js)
*Using Omniauth to deal with Facebook's, Twitter's and Google's API for authentication
*Polymorphic associations for reviews (users and dinners)
*JavaScript libraries such as Selectize.js, SweetAlert.js
*Using Stripe's API to deal with payments
*Action Cable for messaging between users
*ActionMailer for mailing user's welcome message and confirming their e-mail
*Bootstrap

Any suggestions, complaints, ideas, words of encouragement, pull requests, or comments let me know, I'll be glad to chat.
