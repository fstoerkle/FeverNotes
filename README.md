# FeverNotes

_Note Taking for Humans™ ¹._


## TODOs
* Check out rake commands
* Check out quiet_assets gem and configure tagged logger (e.g. SessionID, RequestID)
* Migrate documentation from Github Wiki to repo/docs
* Check out tools mentioned below
* Evaluate RSpec as test suite
* Checkout pry-* tools


## Some notes on developing & debugging Rails applications

### Rake
* `rake -T`: show all tasks
* `rake -D`: show all tasks with description
* `rake … --trace`: details in case of exception

### Logging
* `log/development.log`

### Gems
* `bundle open <GEMS>`: show source of gem

### Tools
* "Better Errors"
* "Binding of Caller"
* "Letter Opener" --> emails

### Debugging
* `pry-remote`, `pry-debugger`, `pry-nav`
* `pry-rails` as default rails console

### Tests (RSpec)
    describe User do
      it "does crazy stuff" do
        pry
      end
    end





----

¹ Tag line shamelessly ripped of from [@kennethreitz](https://github.com/kennethreitz)' [Requests](http://python-requests.org/).
