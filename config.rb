page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :automatic_alt_tags
activate :autoprefixer
activate :directory_indexes
activate :sprockets
activate :autoprefixer

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
