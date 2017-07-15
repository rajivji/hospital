# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( flot/jquery.flot.custom.js flot/jquery.flot.pie.js flot/jquery.flot.resize.js flot/jquery.flot.time.js flot/jquery.flot.growraf.js flot/jquery.flot.categories.js flot/jquery.flot.stack.js flot/jquery.flot.orderBars.js flot/jquery.flot.tooltip.min.js dashboard.js )