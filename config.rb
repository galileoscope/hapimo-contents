require "slim"

compass_config do |config|
  config.output_style = :compact
end

configure :development do
  activate :livereload
end

page "credit.html", :layout => :credit

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  # activate :relative_assets
  # set :relative_links, true
  activate :minify_css
  activate :minify_javascript
end
