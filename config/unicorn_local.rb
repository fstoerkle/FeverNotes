# see https://raw.github.com/defunkt/unicorn/master/examples/unicorn.conf.rb

APP_PATH = File.expand_path File.join(File.dirname(__FILE__), '..')
def app_path(local_path)
  File.join APP_PATH, local_path
end

listen app_path("tmp/sockets/unicorn.sock")

worker_processes 3

pid app_path("tmp/pids/unicorn.pid")

stdout_path app_path("log/unicorn.log")
stderr_path app_path("log/unicorn.log")

preload_app true

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end