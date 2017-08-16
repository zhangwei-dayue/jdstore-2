source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end
gem 'bootstrap-sass'
gem 'devise'
gem 'simple_form'
gem 'carrierwave'
gem 'mini_magick'
gem 'annotate'
gem 'font-awesome-rails'
gem 'letter_opener', group: :development
gem 'aasm'
gem 'pry'  #执行时拦截呼叫
gem 'awesome_rails_console' #高颜值金手指界面
gem 'ransack' #搜索功能
gem 'will_paginate'  #分页显示功能
gem 'will_paginate-bootstrap' #美化分页效果
gem 'acts_as_votable', '~> 0.10.0' #商品点赞功能
gem 'carrierwave-qiniu'
gem 'qiniu-rs'
gem 'figaro' #管理机密信息，密钥
gem "intercom-rails" #客服系统
gem 'airbrake', '~> 5.4' #heroku上debug的gem
gem 'social-share-button' #社群分享鈕
gem 'rails-i18n' #多语言切换
gem 'devise-i18n' #devise翻译档



group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :production do
  gem 'pg'
end
