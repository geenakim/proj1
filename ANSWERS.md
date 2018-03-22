# Q0: Why is this error being thrown?

There is no existing Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

In seed, we have provided the list of random pokemons without trainers. We grab from that sample.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button that throws a pokeball, and sends a patch request through capture_path, which acts on capture method in the controller. The method takes the id of the random pokemon sample and "captures" it.

# Question 3: What would you name your own Pokemon?

Squashbob

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in trainer_path(id: @pokemon.trainer_id). It took in the id of that trainer as a parameter. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Rail flashes are hashes stored under app/view/layouts/application.html.erb. Since it's under view, the error messages are displayed on form.


# Give us feedback on the project and decal below!

I liked all the pokemons

# Extra credit: Link your Heroku deployed app
