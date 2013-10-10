# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem "middleman", "~>3.1.3"
gem "rack", "1.4.5"
gem "sprockets", "~> 2.2.1"
gem "thor", "~> 0.15.2"

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.0"

group :assets do
  gem "sass-rails"
  gem "jquery-rails"
  gem "susy"
  gem "chosen-rails"
end


# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end