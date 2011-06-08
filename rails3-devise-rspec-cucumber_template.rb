# simple template for rails3 and rails3.1 pre
# set up devise, test tools, and create initial commit

require 'net/http'
require 'uri'

# authentication and authorization
gem "devise"

# test tools
gem "rspec-rails", :group => [ :development, :test ]
gem "factory_girl_rails", :group => [ :development, :test ]
gem "cucumber", :group => [ :development, :test ]
gem "autotest", :group => :test

run 'bundle install'

# rspec setup
generate 'rspec:install'
run "echo '--format documentation' >> .rspec"

# authentication and authorization setup
generate "devise:install"

remove_file 'public/index.html'

# commit to git
git :init
git :add => "."
git :commit => "-a -m 'create initial commit'"

say <<-eos
  ============================================================================  
  Don't forget to scroll up for important messages from installed generators.
eos