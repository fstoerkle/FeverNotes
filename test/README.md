Rails Testing
=============

Directory structure
-------------------
The models directory is meant to hold tests for your models.
The controllers directory is meant to hold tests for your controllers.
The integration directory is meant to hold tests that involve any number of controllers interacting.
Fixtures are a way of organizing test data; they reside in the fixtures folder.
The test_helper.rb file holds the default configuration for your tests.

(From http://guides.rubyonrails.org/testing.html#rails-sets-up-for-testing-from-the-word-go)


What to include in your unit tests
----------------------------------
Testing models
Ideally, you would like to include a test for everything which could possibly break. It's a good practice to have at least one test for each of your validations and at least one test for every method in your model.


What to include in your functional tests
----------------------------------------
Testing controllers

You should test for things such as:
- Was the web request successful?
- Was the user redirected to the right page?
- Was the user successfully authenticated?
- Was the correct object stored in the response template?
- Was the appropriate message displayed to the user in the view?


Assertions
----------
http://guides.rubyonrails.org/testing.html#available-assertions


Rails & Devise testing
----------------------
http://stackoverflow.com/questions/4577737/functional-testing-with-rails-and-devise-what-to-put-in-my-fixtures