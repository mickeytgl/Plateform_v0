source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'

# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6'
  gem 'factory_bot', '~> 4.8', '>= 4.8.2'
  gem 'faker', '~> 1.8', '>= 1.8.7'
  gem 'rails-controller-testing'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'administrate', '~> 0.8.1'
gem 'devise', '~> 4.3.0'
gem 'devise-bootstrapped', github: 'excid3/devise-bootstrapped', branch: 'bootstrap4'
gem 'jquery-rails', '~> 4.3.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'rails-assets-tether', '>= 1.3.3', source: 'https://rails-assets.org'
gem 'webpacker', '~> 3.5'
gem 'sidekiq', '~> 5.0'
gem 'sinatra', github: 'sinatra/sinatra'
gem 'foreman', '~> 0.84.0'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
#OmniAuth Logins
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'twitter'
gem 'omniauth-github'

#Geocoder Stuff
gem 'geocoder'

gem 'mini_magick', '~> 4.8'
gem 'carrierwave', '~> 1.2', '>= 1.2.1'
gem 'selectize-rails'
gem 'stripe'
gem 'searchkick'


group :test do
  gem 'shoulda-matchers', '~> 3.1'
end
