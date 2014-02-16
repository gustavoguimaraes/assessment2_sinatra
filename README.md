assessment2_sinatra
===================

Flatiron school sinatra/sql assessment

What is Sinatra? Where does it run?
Sinatra is a Ruby framework. It runs in the server.

What is a Gemfile? How do you use it in your Sinatra Application? Give step by step instructions.

Gemfile is a file where you keep all the gems you're using in your application. In your Sinatra Application you literally have a file called Gemfile. In there you list all the gems first by typing source 'https://rubygems.org'
then a list with the gems you want to use. 
For example:

gem 'sinatra'
gem 'data_mapper'
gem 'dm-sqlite-adapter'
gem 'sqlite3'

What is an ORM? What are the basic features of an ORM? Why is it helpful?

  ORM stands for Object relational mapping. It is used to create databases with object oriented programming.  The basic features of an ORM are Create, Read, Update and Delete. It is helpful because you don't need to memorize all SQL queries to manipulate databases. The ORM has some methods that will do it for you.

What is the public folder? What do we use it for?

  Public folders are used to include everythig about the visual aspects of the website such as images and css files.
  Anything that is static.

What is REST? Why is it useful?

  REST is an acronym for a long sentence that I can recall right now. But basically the idea is the ability to access resuorces through an url.

Suppose I, with my browser, send an HTTP get request to the route that will render the view of all the SpaceCats. Walk me through step by step how your application handles that request.

  The browser sends a HTTP request to the server. But first it reaches the routes, which in turn goes to the view, if there are anything to be retrived from the database it does in this stage. The information goes then back to the views, routes and back to the browser where it is display to the user.
