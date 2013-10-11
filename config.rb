###
# Compass
###


require "susy"


# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# A path which all have the same layout
with_layout :application do
  page "/*"
end


# With no layout
page "/style-guide/index.html", :layout => false


# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
# end

set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascript'

set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"
end