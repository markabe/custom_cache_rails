# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_custom_cache_rails_session',
  :secret      => 'b518536654560bd700e591072b5ba9d0d1cf1ecbe8fd506ebc46696d3dd3936723cf9b9cd67606efbc4e4f7896ace5533c77b3043fd1e1fdefd4649280e2a324'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
