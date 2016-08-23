page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
set :js_dir, 'javascripts'

activate :sprockets

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
