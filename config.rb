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

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

set :layout, false

# Automatic image dimensions on image_tag helper
    activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
    activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# For custom domains on github pages
page "CNAME", layout: false

set :css_dir, 'stylesheets'

set :js_dir, 'javascript'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
    # For example, change the Compass output style for deployment
    activate :minify_css

    # Minify Javascript on build
    activate :minify_javascript

    activate :minify_html
    
    activate :gzip
    activate :imageoptim

    # Enable cache buster
    # activate :asset_hash

    # Use relative URLs
    activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# This will push to the gh-pages branch of the repo, which will
# host it on github pages (If this is a github repository)
activate :deploy do |deploy|
    deploy.method = :git
    deploy.build_before = true
end

set :url_root, 'http://brianhildebrandt.com'