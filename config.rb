::Sass.load_paths << File.join(root, "node_modules")

set :css_dir,     'assets/stylesheets'
set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/images'
set :js_dir,      'assets/javascripts'

activate :autoprefixer
activate :livereload
activate :sprockets

page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

configure :build do
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript
  activate :gzip
  activate :asset_hash
  activate :relative_assets
  activate :inline_style

  set :relative_links, true
end
