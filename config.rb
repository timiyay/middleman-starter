require 'normalize-scss'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# enable requiring Bower-managed front-end assets
sprockets.append_path File.join(root, 'bower_components')

page '/source/index.html', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash        # Enable cache buster
end

configure :development do
  # Reload the browser automatically whenever files change
  activate :livereload, host: '127.0.0.1'
end

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
# configure :build do
#   activate :minify_css
#   activate :minify_javascript
#   activate :asset_hash # Enable cache buster

#   # Use relative URLs
#   # activate :relative_assets

#   # Or use a different image path
#   # set :http_prefix, "/Content/images/"
# end
