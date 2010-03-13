# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jstest_session',
  :secret      => '20e0e7ffb2ccca236315e79ff8e8ba7918af34b13c5d3991bf6b0367121c24253eae57c7282245b32df66d1a027c9c593daa3114c241ea54c8b1269d382f7a43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
