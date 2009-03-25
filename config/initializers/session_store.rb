# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_damxml_session',
  :secret      => '61bbd7877e418995c1bac5d3403640dda0bf3c49f91e2678499b86499c4ae8358511d97b5b69880fef2b378d0728824605c932ebd3ff51268cabaf74b2cf0b4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
