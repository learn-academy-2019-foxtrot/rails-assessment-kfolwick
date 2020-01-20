# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: The model is the database ORM, the view is the part that the user interacts with, and the controller is the middleware between the model and the view.

  Researched answer: 
  MVC is a pattern for the architecture of a software application. It separates an application into the following components:

  Models for handling data and business logic
  Controllers for handling the user interface and application
  Views for handling graphical user interface objects and presentation



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the Controller in the file animal.rb
  ```
  class AnimalsController < ApplicationController
    def index
    animals = Animal.all
      render json: animals
    end
  end
  ```

  Step 3: Create the View in the file app/views/about/index.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'   Displays all users

/users/1      method="GET"     # :controller => 'users', :action => 'show'    Displays a specific user

/users/new    method="GET"     # :controller => 'users', :action => 'new'     Returns an HTML form for creating a new user

/users/       method="POST"    # :controller => 'users', :action => 'create'  Creates a new user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'    Returns an HTML form for editing a specific user

/users/1      method="PUT"     # :controller => 'users', :action => 'update'  Updates a specific user

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy' Deletes a specific user



3b. Which of the above routes must always be passed params and why?
Show, edit, update, detroy because they are only applied to a specific item.


4. What is the public folder used for in Rails?

  Your answer: It is used to store files that can be used by the rest of the application.

  Researched answer: The public directory contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. Files that are inside this directory are available in https://appname.com/filename directly.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

 get '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: The verb for an html form is GET. This tells us that it will only display the form to the user, where they can input information into the form fields. Submitting the form will use POST, PUT or PATCH to either create or update an item.

  Researched answer: The HTML action attribute is used to specify where the formdata is to be sent to the server after submission of the form. The http verb is designated in the route.
  
  

7. Name two rails generator commands and what files they create:

  Your answer: 
  rails generate controller users: app/controllers/users_controller.rb, app/views/users, app/helpers/users_helper.rb
  
  rails generate model comments: db/migrate/[timestamp]_create_comment.rb, app/models/comment.rb

  Researched answer:
  rails g scaffold: A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.
  
  Not a generator, but handy to know- rails destroy resource: Rails Destroy is very useful when you are first creating your project because you are bound to have a typo or you change your mind about the relationships between your models. The destroy command with go through every path that a generator will use to create a file, but it will remove the file instead.


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. All of the things that rails migrations can do:
    create_table(name, options)
    drop_table(name)
    rename_table(old_name, new_name)
    add_column(table_name, column_name, type, options)
    rename_column(table_name, column_name, new_column_name)
    change_column(table_name, column_name, type, options)
    remove_column(table_name, column_name)
    add_index(table_name, column_name, index_type)
    remove_index(table_name, column_name)

2.Action Mailer is the Rails component that enables applications to send and receive emails

3. You can use rails to allow user to upload files to your server.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
