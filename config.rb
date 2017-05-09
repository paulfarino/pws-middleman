activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets
activate :dotenv

set :data_dir, 'source/data'
set :relative_links, true

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  ignore 'stylesheets/base/debug.scss'
  activate :relative_assets
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
end

# Deploy to FTP
activate :deploy do |deploy|
  deploy.deploy_method   = :ftp
  deploy.host     = ENV['FTP_URL']
  deploy.path     = ENV['FTP_PATH']
  deploy.user     = ENV['FTP_USERNAME']
  deploy.password = ENV['FTP_PASSWORD']
end
