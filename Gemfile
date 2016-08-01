source 'https://rubygems.org'

# Use Berkshelf for resolving cookbook dependencies
gem 'berkshelf', '~> 3.0'

# Install omnibus software
gem 'omnibus', '5.4'
gem 'omnibus-software', :github => 'chef/omnibus-software', :branch => 'master'

# Use Test Kitchen with Vagrant for convering the build environment
gem 'test-kitchen',    '~> 1.2'
gem 'kitchen-vagrant', '~> 0.14'

group :test do
  gem 'rake', '~> 10.1.0'
  gem 'serverspec', '~> 2.18.0'
end
